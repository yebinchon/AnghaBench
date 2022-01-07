; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_new_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_new_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32 }
%struct.net = type { i32 }

@RT_TABLE_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ipmr_mr_table_ops = common dso_local global i32 0, align 4
@ipmr_expire_process = common dso_local global i32 0, align 4
@ipmr_new_table_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mr_table* (%struct.net*, i32)* @ipmr_new_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mr_table* @ipmr_new_table(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.mr_table*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mr_table*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RT_TABLE_DEFAULT, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 1000000000
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mr_table* @ERR_PTR(i32 %15)
  store %struct.mr_table* %16, %struct.mr_table** %3, align 8
  br label %31

17:                                               ; preds = %10, %2
  %18 = load %struct.net*, %struct.net** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.mr_table* @ipmr_get_table(%struct.net* %18, i32 %19)
  store %struct.mr_table* %20, %struct.mr_table** %6, align 8
  %21 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %22 = icmp ne %struct.mr_table* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  store %struct.mr_table* %24, %struct.mr_table** %3, align 8
  br label %31

25:                                               ; preds = %17
  %26 = load %struct.net*, %struct.net** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ipmr_expire_process, align 4
  %29 = load i32, i32* @ipmr_new_table_set, align 4
  %30 = call %struct.mr_table* @mr_table_alloc(%struct.net* %26, i32 %27, i32* @ipmr_mr_table_ops, i32 %28, i32 %29)
  store %struct.mr_table* %30, %struct.mr_table** %3, align 8
  br label %31

31:                                               ; preds = %25, %23, %13
  %32 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  ret %struct.mr_table* %32
}

declare dso_local %struct.mr_table* @ERR_PTR(i32) #1

declare dso_local %struct.mr_table* @ipmr_get_table(%struct.net*, i32) #1

declare dso_local %struct.mr_table* @mr_table_alloc(%struct.net*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
