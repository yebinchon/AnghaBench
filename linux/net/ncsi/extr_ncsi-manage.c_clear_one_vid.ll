; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_clear_one_vid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_clear_one_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_channel = type { i32, %struct.ncsi_channel_vlan_filter }
%struct.ncsi_channel_vlan_filter = type { i32, i64*, i32 }
%struct.ncsi_cmd_arg = type { i32*, i64*, i32 }

@NCSI_PKT_CMD_SVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_dev_priv*, %struct.ncsi_channel*, %struct.ncsi_cmd_arg*)* @clear_one_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_one_vid(%struct.ncsi_dev_priv* %0, %struct.ncsi_channel* %1, %struct.ncsi_cmd_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_cmd_arg*, align 8
  %8 = alloca %struct.ncsi_channel_vlan_filter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %5, align 8
  store %struct.ncsi_channel* %1, %struct.ncsi_channel** %6, align 8
  store %struct.ncsi_cmd_arg* %2, %struct.ncsi_cmd_arg** %7, align 8
  %13 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %14 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %13, i32 0, i32 1
  store %struct.ncsi_channel_vlan_filter* %14, %struct.ncsi_channel_vlan_filter** %8, align 8
  %15 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %16 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %15, i32 0, i32 2
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %10, align 8
  %18 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %19 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %24 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @find_next_bit(i8* %22, i32 %25, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %29 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %34 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 -1, i32* %4, align 4
  br label %76

37:                                               ; preds = %3
  %38 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %39 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @clear_bit(i32 %45, i8* %46)
  %48 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %49 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %55 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* @NCSI_PKT_CMD_SVF, align 4
  %59 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %7, align 8
  %60 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %7, align 8
  %63 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %7, align 8
  %69 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  store i32 %67, i32* %71, align 4
  %72 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %7, align 8
  %73 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  store i32 0, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %37, %32
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_bit(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
