; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_create_profile_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_create_profile_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file_operations = type { i32 }
%struct.aa_proxy = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*, %struct.aa_profile*, %struct.file_operations*)* @create_profile_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @create_profile_file(%struct.dentry* %0, i8* %1, %struct.aa_profile* %2, %struct.file_operations* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.file_operations*, align 8
  %9 = alloca %struct.aa_proxy*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.aa_profile* %2, %struct.aa_profile** %7, align 8
  store %struct.file_operations* %3, %struct.file_operations** %8, align 8
  %11 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %12 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.aa_proxy* @aa_get_proxy(i32 %14)
  store %struct.aa_proxy* %15, %struct.aa_proxy** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = or i32 %17, 292
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = load %struct.aa_proxy*, %struct.aa_proxy** %9, align 8
  %21 = load %struct.file_operations*, %struct.file_operations** %8, align 8
  %22 = call %struct.dentry* @aafs_create_file(i8* %16, i32 %18, %struct.dentry* %19, %struct.aa_proxy* %20, %struct.file_operations* %21)
  store %struct.dentry* %22, %struct.dentry** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %10, align 8
  %24 = call i64 @IS_ERR(%struct.dentry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.aa_proxy*, %struct.aa_proxy** %9, align 8
  %28 = call i32 @aa_put_proxy(%struct.aa_proxy* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %30
}

declare dso_local %struct.aa_proxy* @aa_get_proxy(i32) #1

declare dso_local %struct.dentry* @aafs_create_file(i8*, i32, %struct.dentry*, %struct.aa_proxy*, %struct.file_operations*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @aa_put_proxy(%struct.aa_proxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
