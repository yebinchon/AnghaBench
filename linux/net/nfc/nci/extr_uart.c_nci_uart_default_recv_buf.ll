; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_default_recv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_default_recv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_uart = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 (%struct.nci_uart.0*, %struct.TYPE_9__*)* }
%struct.nci_uart.0 = type opaque

@.str = private unnamed_addr constant [67 x i8] c"receive data from tty but no NCI dev is attached yet, drop buffer\0A\00", align 1
@NCI_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NCI_CTRL_HDR_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"corrupted RX packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_uart*, i32*, i8*, i32)* @nci_uart_default_recv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_uart_default_recv_buf(%struct.nci_uart* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_uart*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nci_uart* %0, %struct.nci_uart** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %12 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %17 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfc_err(i32 %20, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %150

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %148, %58, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %149

26:                                               ; preds = %23
  %27 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %28 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %33 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %35 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NCI_MAX_PACKET_SIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_9__* @nci_skb_alloc(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %41 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %40, i32 0, i32 1
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %43 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %150

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %52 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NCI_CTRL_HDR_SIZE, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %60 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* %62, align 4
  %65 = call i32 @skb_put_u8(%struct.TYPE_9__* %61, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %23

68:                                               ; preds = %50
  %69 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %70 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i64, i64* @NCI_CTRL_HDR_SIZE, align 8
  %75 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %76 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @nci_plen(i32 %79)
  %81 = add nsw i64 %74, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %84 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %73, %68
  %86 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %87 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %91 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %89, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %85
  %103 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %104 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @skb_put_data(%struct.TYPE_9__* %105, i32* %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %117 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %121 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %102
  %127 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %128 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64 (%struct.nci_uart.0*, %struct.TYPE_9__*)*, i64 (%struct.nci_uart.0*, %struct.TYPE_9__*)** %129, align 8
  %131 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %132 = bitcast %struct.nci_uart* %131 to %struct.nci_uart.0*
  %133 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %134 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i64 %130(%struct.nci_uart.0* %132, %struct.TYPE_9__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %126
  %139 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %140 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @nfc_err(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %138, %126
  %146 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %147 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %146, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %147, align 8
  br label %148

148:                                              ; preds = %145, %102
  br label %23

149:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %46, %15
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @nfc_err(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @nci_skb_alloc(i32, i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @nci_plen(i32) #1

declare dso_local i32 @skb_put_data(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
