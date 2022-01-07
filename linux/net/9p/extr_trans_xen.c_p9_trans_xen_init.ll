; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_p9_trans_xen_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_p9_trans_xen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Initialising Xen transport for 9pfs\0A\00", align 1
@p9_xen_trans = common dso_local global i32 0, align 4
@xen_9pfs_front_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @p9_trans_xen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_trans_xen_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @xen_domain()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %18

8:                                                ; preds = %0
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @v9fs_register_trans(i32* @p9_xen_trans)
  %11 = call i32 @xenbus_register_frontend(i32* @xen_9pfs_front_driver)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @v9fs_unregister_trans(i32* @p9_xen_trans)
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @xen_domain(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @v9fs_register_trans(i32*) #1

declare dso_local i32 @xenbus_register_frontend(i32*) #1

declare dso_local i32 @v9fs_unregister_trans(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
