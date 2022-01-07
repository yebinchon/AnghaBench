; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_output.c___sctp_packet_append_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_output.c___sctp_packet_append_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32, i32, i32, i32, i32, i32, i32, %struct.sctp_chunk* }
%struct.sctp_chunk = type { i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*)* @__sctp_packet_append_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sctp_packet_append_chunk(%struct.sctp_packet* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_packet*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_packet* %0, %struct.sctp_packet** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  %13 = call i64 @SCTP_PAD4(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @sctp_packet_will_fit(%struct.sctp_packet* %15, %struct.sctp_chunk* %16, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SCTP_XMIT_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %89

23:                                               ; preds = %2
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %24, i32 0, i32 5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %71 [
    i32 130, label %29
    i32 129, label %29
    i32 131, label %46
    i32 128, label %49
    i32 132, label %65
  ]

29:                                               ; preds = %23, %23
  %30 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %32 = call i32 @sctp_packet_append_data(%struct.sctp_packet* %30, %struct.sctp_chunk* %31)
  %33 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %34 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %36 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %38 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %71

46:                                               ; preds = %23
  %47 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %48 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  br label %71

49:                                               ; preds = %23
  %50 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %51 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %58 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %49
  br label %71

65:                                               ; preds = %23
  %66 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %67 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %69 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %70 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %69, i32 0, i32 7
  store %struct.sctp_chunk* %68, %struct.sctp_chunk** %70, align 8
  br label %71

71:                                               ; preds = %23, %65, %64, %46, %29
  %72 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %73 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %72, i32 0, i32 1
  %74 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %75 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %74, i32 0, i32 6
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %79 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %85 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %88 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %71, %22
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @SCTP_PAD4(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_packet_will_fit(%struct.sctp_packet*, %struct.sctp_chunk*, i64) #1

declare dso_local i32 @sctp_packet_append_data(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
