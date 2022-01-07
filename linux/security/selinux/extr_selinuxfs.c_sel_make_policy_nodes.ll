; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_policy_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_policy_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_fs_info = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"SELinux: failed to load policy booleans\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"SELinux: failed to load policy classes\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SELinux: failed to load policy capabilities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_fs_info*)* @sel_make_policy_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_make_policy_nodes(%struct.selinux_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.selinux_fs_info*, align 8
  %4 = alloca i32, align 4
  store %struct.selinux_fs_info* %0, %struct.selinux_fs_info** %3, align 8
  %5 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %6 = call i32 @sel_make_bools(%struct.selinux_fs_info* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %14 = call i32 @sel_make_classes(%struct.selinux_fs_info* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %12
  %21 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %22 = call i32 @sel_make_policycap(%struct.selinux_fs_info* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %17, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @sel_make_bools(%struct.selinux_fs_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sel_make_classes(%struct.selinux_fs_info*) #1

declare dso_local i32 @sel_make_policycap(%struct.selinux_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
