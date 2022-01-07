; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_perm_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_perm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.dentry = type { i32 }
%struct.path_cond = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, %struct.dentry*, i32, i32)* @common_perm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_perm_create(i8* %0, %struct.path* %1, %struct.dentry* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.path_cond, align 4
  store i8* %0, i8** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %12, i32 0, i32 0
  %14 = call i32 (...) @current_fsuid()
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %12, i32 0, i32 1
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.path*, %struct.path** %8, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @path_mediated_fs(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %29

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.path*, %struct.path** %8, align 8
  %26 = load %struct.dentry*, %struct.dentry** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @common_perm_dir_dentry(i8* %24, %struct.path* %25, %struct.dentry* %26, i32 %27, %struct.path_cond* %12)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @path_mediated_fs(i32) #1

declare dso_local i32 @common_perm_dir_dentry(i8*, %struct.path*, %struct.dentry*, i32, %struct.path_cond*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
