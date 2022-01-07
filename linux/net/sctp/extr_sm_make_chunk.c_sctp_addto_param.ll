; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_addto_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_addto_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sctp_chunk*, i32, i8*)* @sctp_addto_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sctp_addto_param(%struct.sctp_chunk* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @skb_put(i32 %17, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @memcpy(i8* %23, i8* %24, i32 %25)
  br label %31

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @memset(i8* %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @htons(i32 %34)
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @skb_tail_pointer(i32 %42)
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %8, align 8
  ret i8* %46
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @skb_put(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_tail_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
