; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_sysctl.c_rds_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_sysctl.c_rds_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rds_sysctl_reconnect_min = common dso_local global i32 0, align 4
@rds_sysctl_reconnect_min_jiffies = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"net/rds\00", align 1
@rds_sysctl_rds_table = common dso_local global i32 0, align 4
@rds_sysctl_reg_table = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_sysctl_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @msecs_to_jiffies(i32 1)
  store i32 %2, i32* @rds_sysctl_reconnect_min, align 4
  %3 = load i32, i32* @rds_sysctl_reconnect_min, align 4
  store i32 %3, i32* @rds_sysctl_reconnect_min_jiffies, align 4
  %4 = load i32, i32* @rds_sysctl_rds_table, align 4
  %5 = call i32 @register_net_sysctl(i32* @init_net, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* @rds_sysctl_reg_table, align 4
  %6 = load i32, i32* @rds_sysctl_reg_table, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @register_net_sysctl(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
