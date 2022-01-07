; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_task.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_task_acl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"manual_domain_transition \00", align 1
@TOMOYO_TYPE_MANUAL_TASK_ACL = common dso_local global i32 0, align 4
@tomoyo_same_task_acl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_acl_param*)* @tomoyo_write_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_task(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca %struct.tomoyo_acl_param*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_task_acl, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %2, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %8 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %7, i32 0, i32 0
  %9 = call i64 @tomoyo_str_starts(i32* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tomoyo_task_acl, %struct.tomoyo_task_acl* %4, i32 0, i32 0
  %13 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %14 = call i64 @tomoyo_get_domainname(%struct.tomoyo_acl_param* %13)
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.tomoyo_task_acl, %struct.tomoyo_task_acl* %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @TOMOYO_TYPE_MANUAL_TASK_ACL, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.tomoyo_task_acl, %struct.tomoyo_task_acl* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tomoyo_task_acl, %struct.tomoyo_task_acl* %4, i32 0, i32 1
  %23 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %2, align 8
  %24 = load i32, i32* @tomoyo_same_task_acl, align 4
  %25 = call i32 @tomoyo_update_domain(%struct.TYPE_2__* %22, i32 16, %struct.tomoyo_acl_param* %23, i32 %24, i32* null)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %11
  %27 = getelementptr inbounds %struct.tomoyo_task_acl, %struct.tomoyo_task_acl* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @tomoyo_put_name(i64 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @tomoyo_str_starts(i32*, i8*) #1

declare dso_local i64 @tomoyo_get_domainname(%struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_2__*, i32, %struct.tomoyo_acl_param*, i32, i32*) #1

declare dso_local i32 @tomoyo_put_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
