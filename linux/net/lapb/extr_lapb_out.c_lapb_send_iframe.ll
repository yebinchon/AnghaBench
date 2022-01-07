; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_send_iframe.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_send_iframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@LAPB_EXTENDED = common dso_local global i32 0, align 4
@LAPB_I = common dso_local global i8 0, align 1
@LAPB_EPF = common dso_local global i8 0, align 1
@LAPB_SPF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"(%p) S%d TX I(%d) S%d R%d\0A\00", align 1
@LAPB_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapb_cb*, %struct.sk_buff*, i32)* @lapb_send_iframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_send_iframe(%struct.lapb_cb* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.lapb_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %110

11:                                               ; preds = %3
  %12 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %13 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LAPB_EXTENDED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i8* @skb_push(%struct.sk_buff* %19, i32 2)
  store i8* %20, i8** %7, align 8
  %21 = load i8, i8* @LAPB_I, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %21, i8* %23, align 1
  %24 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %25 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 1
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %27
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i8, i8* @LAPB_EPF, align 1
  %38 = zext i8 %37 to i32
  br label %40

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %46 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 1
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %48
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  br label %91

55:                                               ; preds = %11
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i8* @skb_push(%struct.sk_buff* %56, i32 1)
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* @LAPB_I, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8, i8* @LAPB_SPF, align 1
  %64 = zext i8 %63 to i32
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %67
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  %73 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %74 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 5
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %76
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  %82 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %83 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 1
  %86 = load i8*, i8** %7, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %85
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 1
  br label %91

91:                                               ; preds = %66, %40
  %92 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %93 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %96 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %100 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %103 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %98, i32 %101, i32 %104)
  %106 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i32, i32* @LAPB_COMMAND, align 4
  %109 = call i32 @lapb_transmit_buffer(%struct.lapb_cb* %106, %struct.sk_buff* %107, i32 %108)
  br label %110

110:                                              ; preds = %91, %10
  ret void
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lapb_transmit_buffer(%struct.lapb_cb*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
