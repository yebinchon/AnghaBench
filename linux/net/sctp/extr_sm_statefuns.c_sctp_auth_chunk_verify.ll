; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_auth_chunk_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_auth_chunk_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_chunk = type { i32, i64, %struct.sctp_chunkhdr*, i32, i32, i64 }
%struct.sctp_chunkhdr = type { i32 }
%struct.sctp_association = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SCTP_IERROR_NO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_chunk*, %struct.sctp_association*)* @sctp_auth_chunk_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_auth_chunk_verify(%struct.net* %0, %struct.sctp_chunk* %1, %struct.sctp_association* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_chunk, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %7, align 8
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %14
  store i32 0, i32* %4, align 4
  br label %59

27:                                               ; preds = %20
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 5
  store i64 %30, i64* %31, align 8
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @skb_push(i64 %42, i32 4)
  %44 = inttoptr i64 %43 to %struct.sctp_chunkhdr*
  %45 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 2
  store %struct.sctp_chunkhdr* %44, %struct.sctp_chunkhdr** %45, align 8
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %47 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @skb_pull(i64 %48, i32 4)
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %51 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %55 = call i64 @sctp_sf_authenticate(%struct.sctp_association* %54, %struct.sctp_chunk* %8)
  %56 = load i64, i64* @SCTP_IERROR_NO_ERROR, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %27, %26, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @skb_push(i64, i32) #1

declare dso_local i32 @skb_pull(i64, i32) #1

declare dso_local i64 @sctp_sf_authenticate(%struct.sctp_association*, %struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
