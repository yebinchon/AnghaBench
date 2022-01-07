; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c___nfc_alloc_vendor_cmd_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c___nfc_alloc_vendor_cmd_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nfc_dev = type { i32 }

@NFC_CMD_VENDOR = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_ID = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_SUBCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfc_dev*, i32, i32, i32, i32, i32, i32, i32)* @__nfc_alloc_vendor_cmd_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__nfc_alloc_vendor_cmd_skb(%struct.nfc_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nfc_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i8*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 100
  %22 = load i32, i32* %17, align 4
  %23 = call %struct.sk_buff* @nlmsg_new(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %18, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %79

27:                                               ; preds = %8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @NFC_CMD_VENDOR, align 4
  %32 = call i8* @nfc_hdr_put(%struct.sk_buff* %28, i32 %29, i32 %30, i32 0, i32 %31)
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %79

38:                                               ; preds = %27
  %39 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %40 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %76

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %49 = load i32, i32* @NFC_ATTR_VENDOR_ID, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %76

54:                                               ; preds = %47
  %55 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %56 = load i32, i32* @NFC_ATTR_VENDOR_SUBCMD, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %76

61:                                               ; preds = %54
  %62 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %63 = bitcast %struct.nfc_dev* %62 to i8*
  %64 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8**
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %63, i8** %68, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8**
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %69, i8** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %9, align 8
  br label %79

76:                                               ; preds = %60, %53, %46
  %77 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %79

79:                                               ; preds = %76, %61, %35, %26
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %80
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nfc_hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
