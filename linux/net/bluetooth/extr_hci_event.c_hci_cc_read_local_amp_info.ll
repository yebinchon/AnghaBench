; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_amp_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_amp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_amp_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_local_amp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_local_amp_info(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_local_amp_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_rp_read_local_amp_info*
  store %struct.hci_rp_read_local_amp_info* %10, %struct.hci_rp_read_local_amp_info** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %82

23:                                               ; preds = %2
  %24 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %25 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %30 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @__le32_to_cpu(i32 %31)
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %36 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__le32_to_cpu(i32 %37)
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %42 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @__le32_to_cpu(i32 %43)
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %48 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @__le32_to_cpu(i32 %49)
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %54 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %59 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @__le16_to_cpu(i32 %60)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %65 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @__le16_to_cpu(i32 %66)
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %71 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @__le32_to_cpu(i32 %72)
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.hci_rp_read_local_amp_info*, %struct.hci_rp_read_local_amp_info** %5, align 8
  %77 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, %struct.hci_rp_read_local_amp_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @__le32_to_cpu(i32 %78)
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
