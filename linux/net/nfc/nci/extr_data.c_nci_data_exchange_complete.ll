; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_data_exchange_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_data_exchange_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nci_conn_info = type { i8*, i32 (i8*, %struct.sk_buff*, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"len %d, err %d\0A\00", align 1
@NCI_DATA_EXCHANGE_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"no rx callback, dropping rx data...\0A\00", align 1
@NCI_DATA_EXCHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nci_data_exchange_complete(%struct.nci_dev* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nci_conn_info*, align 8
  %10 = alloca i32 (i8*, %struct.sk_buff*, i32)*, align 8
  %11 = alloca i8*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev* %12, i32 %13)
  store %struct.nci_conn_info* %14, %struct.nci_conn_info** %9, align 8
  %15 = load %struct.nci_conn_info*, %struct.nci_conn_info** %9, align 8
  %16 = icmp ne %struct.nci_conn_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  br label %62

20:                                               ; preds = %4
  %21 = load %struct.nci_conn_info*, %struct.nci_conn_info** %9, align 8
  %22 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %21, i32 0, i32 1
  %23 = load i32 (i8*, %struct.sk_buff*, i32)*, i32 (i8*, %struct.sk_buff*, i32)** %22, align 8
  store i32 (i8*, %struct.sk_buff*, i32)* %23, i32 (i8*, %struct.sk_buff*, i32)** %10, align 8
  %24 = load %struct.nci_conn_info*, %struct.nci_conn_info** %9, align 8
  %25 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %38, i32 0, i32 1
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load i32, i32* @NCI_DATA_EXCHANGE_TO, align 4
  %42 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %42, i32 0, i32 0
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load i32 (i8*, %struct.sk_buff*, i32)*, i32 (i8*, %struct.sk_buff*, i32)** %10, align 8
  %46 = icmp ne i32 (i8*, %struct.sk_buff*, i32)* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32 (i8*, %struct.sk_buff*, i32)*, i32 (i8*, %struct.sk_buff*, i32)** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 %48(i8* %49, %struct.sk_buff* %50, i32 %51)
  br label %61

53:                                               ; preds = %34
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %17
  %63 = load i32, i32* @NCI_DATA_EXCHANGE, align 4
  %64 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %64, i32 0, i32 0
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  ret void
}

declare dso_local %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
