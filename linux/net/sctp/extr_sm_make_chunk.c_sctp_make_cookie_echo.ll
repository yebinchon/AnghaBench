; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_cookie_echo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_cookie_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.sctp_chunk = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCTP_CID_COOKIE_ECHO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_cookie_echo(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = load i32, i32* @SCTP_CID_COOKIE_ECHO, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %16, i32 %17, i32 0, i32 %18, i32 %19)
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %5, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %22 = icmp ne %struct.sctp_chunk* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %25, i32 %26, i8* %27)
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %33 = icmp ne %struct.sctp_chunk* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %24
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %42
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
