; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_addto_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_addto_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sctp_addto_chunk(%struct.sctp_chunk* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @SCTP_PAD4(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @skb_put_zero(i32 %22, i32 %23)
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @skb_put_data(i32 %27, i8* %28, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @htons(i32 %35)
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @skb_tail_pointer(i32 %43)
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %9, align 8
  ret i8* %47
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SCTP_PAD4(i32) #1

declare dso_local i32 @skb_put_zero(i32, i32) #1

declare dso_local i8* @skb_put_data(i32, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_tail_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
