; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_build_l2tpv2_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_build_l2tpv2_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, i32, i32, i64, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i32 }

@L2TP_HDR_VER_2 = common dso_local global i32 0, align 4
@L2TP_HDRFLAG_S = common dso_local global i32 0, align 4
@L2TP_MSG_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: updated ns to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_session*, i8*)* @l2tp_build_l2tpv2_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_build_l2tpv2_header(%struct.l2tp_session* %0, i8* %1) #0 {
  %3 = alloca %struct.l2tp_session*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2tp_tunnel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.l2tp_session* %0, %struct.l2tp_session** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %12 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %11, i32 0, i32 4
  %13 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %12, align 8
  store %struct.l2tp_tunnel* %13, %struct.l2tp_tunnel** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @L2TP_HDR_VER_2, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %20 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %23 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %26 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @L2TP_HDRFLAG_S, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @htons(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @htons(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @htons(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %50 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %33
  %54 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %55 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @htons(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %6, align 8
  store i32 0, i32* %61, align 4
  %63 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %64 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %68 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %68, align 4
  %71 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %72 = load i32, i32* @L2TP_MSG_SEQ, align 4
  %73 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %74 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %77 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @l2tp_dbg(%struct.l2tp_session* %71, i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %53, %33
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = trunc i64 %86 to i32
  ret i32 %87
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @l2tp_dbg(%struct.l2tp_session*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
