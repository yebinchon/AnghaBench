; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_rcv_ootb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_rcv_ootb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.sctp_chunkhdr = type { i64, i32 }

@SCTP_CID_ABORT = common dso_local global i64 0, align 8
@SCTP_CID_SHUTDOWN_COMPLETE = common dso_local global i64 0, align 8
@SCTP_CID_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @sctp_rcv_ootb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_rcv_ootb(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sctp_chunkhdr*, align 8
  %5 = alloca %struct.sctp_chunkhdr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %73, %1
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 16
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %79

18:                                               ; preds = %8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.sctp_chunkhdr* @skb_header_pointer(%struct.sk_buff* %19, i32 %20, i32 16, %struct.sctp_chunkhdr* %5)
  store %struct.sctp_chunkhdr* %21, %struct.sctp_chunkhdr** %4, align 8
  %22 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ntohs(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %79

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ntohs(i32 %33)
  %35 = call i32 @SCTP_PAD4(i32 %34)
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %79

43:                                               ; preds = %29
  %44 = load i64, i64* @SCTP_CID_ABORT, align 8
  %45 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %80

50:                                               ; preds = %43
  %51 = load i64, i64* @SCTP_CID_SHUTDOWN_COMPLETE, align 8
  %52 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %80

57:                                               ; preds = %50
  %58 = load i64, i64* @SCTP_CID_INIT, align 8
  %59 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %60 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %65 = bitcast %struct.sctp_chunkhdr* %64 to i8*
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %80

71:                                               ; preds = %63, %57
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %8, label %79

79:                                               ; preds = %73, %42, %28, %17
  store i32 0, i32* %2, align 4
  br label %81

80:                                               ; preds = %70, %56, %49
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.sctp_chunkhdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.sctp_chunkhdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SCTP_PAD4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
