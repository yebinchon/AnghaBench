; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_read_local_amp_assoc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_read_local_amp_assoc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, %struct.amp_assoc }
%struct.amp_assoc = type { i64, i64, i64 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_rp_read_local_amp_assoc = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"frag_len %zu rem_len %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32, %struct.sk_buff*)* @read_local_amp_assoc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_local_amp_assoc_complete(%struct.hci_dev* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hci_rp_read_local_amp_assoc*, align 8
  %10 = alloca %struct.amp_assoc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.hci_rp_read_local_amp_assoc*
  store %struct.hci_rp_read_local_amp_assoc* %17, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 1
  store %struct.amp_assoc* %19, %struct.amp_assoc** %10, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %24 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  %27 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %28 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %93

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 24
  store i64 %37, i64* %12, align 8
  %38 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %39 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @__le16_to_cpu(i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %32
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %50 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %53 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %57 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @memcpy(i64 %55, i32 %58, i64 %59)
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %63 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %67 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %68 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @amp_read_loc_assoc_frag(%struct.hci_dev* %66, i32 %69)
  br label %104

71:                                               ; preds = %32
  %72 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %73 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %76 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %80 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @memcpy(i64 %78, i32 %81, i64 %82)
  %84 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %85 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %86, %87
  %89 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %90 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.amp_assoc*, %struct.amp_assoc** %10, align 8
  %92 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %71, %31
  %94 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %95 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %96 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @a2mp_send_getampassoc_rsp(%struct.hci_dev* %94, i64 %97)
  %99 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %100 = load %struct.hci_rp_read_local_amp_assoc*, %struct.hci_rp_read_local_amp_assoc** %9, align 8
  %101 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, %struct.hci_rp_read_local_amp_assoc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @a2mp_send_create_phy_link_req(%struct.hci_dev* %99, i64 %102)
  br label %104

104:                                              ; preds = %93, %45
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, i64) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @amp_read_loc_assoc_frag(%struct.hci_dev*, i32) #1

declare dso_local i32 @a2mp_send_getampassoc_rsp(%struct.hci_dev*, i64) #1

declare dso_local i32 @a2mp_send_create_phy_link_req(%struct.hci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
