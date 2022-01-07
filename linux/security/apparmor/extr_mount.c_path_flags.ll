; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_path_flags.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_path_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.path = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PATH_IS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.path*)* @path_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_flags(%struct.aa_profile* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.aa_profile*, align 8
  %4 = alloca %struct.path*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %5 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %6 = icmp ne %struct.aa_profile* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @AA_BUG(i32 %8)
  %10 = load %struct.path*, %struct.path** %4, align 8
  %11 = icmp ne %struct.path* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %16 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.path*, %struct.path** %4, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISDIR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @PATH_IS_DIR, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = or i32 %17, %31
  ret i32 %32
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
