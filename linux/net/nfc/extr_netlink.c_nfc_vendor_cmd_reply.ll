; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_vendor_cmd_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_vendor_cmd_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nfc_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8**
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.nfc_dev*
  store %struct.nfc_dev* %12, %struct.nfc_dev** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8**
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @memset(i64 %21, i32 0, i32 8)
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @genlmsg_end(%struct.sk_buff* %37, i8* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @genlmsg_reply(%struct.sk_buff* %40, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %31
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
