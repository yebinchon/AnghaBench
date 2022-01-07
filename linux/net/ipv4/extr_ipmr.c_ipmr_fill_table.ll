; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_fill_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_fill_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@IPMRA_TABLE_ID = common dso_local global i32 0, align 4
@IPMRA_TABLE_CACHE_RES_QUEUE_LEN = common dso_local global i32 0, align 4
@IPMRA_TABLE_MROUTE_REG_VIF_NUM = common dso_local global i32 0, align 4
@IPMRA_TABLE_MROUTE_DO_ASSERT = common dso_local global i32 0, align 4
@IPMRA_TABLE_MROUTE_DO_PIM = common dso_local global i32 0, align 4
@IPMRA_TABLE_MROUTE_DO_WRVIFWHOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.sk_buff*)* @ipmr_fill_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_fill_table(%struct.mr_table* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mr_table*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %8 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %7, i32 0, i32 5
  %9 = call i32 @atomic_read(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @IPMRA_TABLE_ID, align 4
  %12 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %13 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nla_put_u32(%struct.sk_buff* %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @IPMRA_TABLE_CACHE_RES_QUEUE_LEN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @nla_put_u32(%struct.sk_buff* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @IPMRA_TABLE_MROUTE_REG_VIF_NUM, align 4
  %26 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %27 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nla_put_s32(%struct.sk_buff* %24, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @IPMRA_TABLE_MROUTE_DO_ASSERT, align 4
  %34 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %35 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u8(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @IPMRA_TABLE_MROUTE_DO_PIM, align 4
  %42 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %43 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u8(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* @IPMRA_TABLE_MROUTE_DO_WRVIFWHOLE, align 4
  %50 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %51 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u8(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %39, %31, %23, %17, %2
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
