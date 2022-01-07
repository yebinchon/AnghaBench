; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_build_l2tpv3_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_build_l2tpv3_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, i64, i32, i32, i64, i32, i32*, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i64 }

@L2TP_ENCAPTYPE_UDP = common dso_local global i64 0, align 8
@L2TP_HDR_VER_3 = common dso_local global i32 0, align 4
@L2TP_L2SPECTYPE_DEFAULT = common dso_local global i64 0, align 8
@L2TP_MSG_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: updated ns to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_session*, i8*)* @l2tp_build_l2tpv3_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_build_l2tpv3_header(%struct.l2tp_session* %0, i8* %1) #0 {
  %3 = alloca %struct.l2tp_session*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2tp_tunnel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.l2tp_session* %0, %struct.l2tp_session** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %11 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %10, i32 0, i32 7
  %12 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %11, align 8
  store %struct.l2tp_tunnel* %12, %struct.l2tp_tunnel** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %16 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L2TP_ENCAPTYPE_UDP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32, i32* @L2TP_HDR_VER_3, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 0, i32* %29, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %34 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @htonl(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %6, align 8
  %41 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %42 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %32
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %48 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %52 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i8* %46, i32* %50, i32 %53)
  %55 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %56 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %45, %32
  %62 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %63 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @L2TP_L2SPECTYPE_DEFAULT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  %68 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %69 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %74 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 1073741824, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %78 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %82 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 16777215
  store i32 %84, i32* %82, align 8
  %85 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %86 = load i32, i32* @L2TP_MSG_SEQ, align 4
  %87 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %88 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %91 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @l2tp_dbg(%struct.l2tp_session* %85, i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %72, %67
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @htonl(i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = bitcast i8* %97 to i32*
  store i32 %96, i32* %98, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  store i8* %100, i8** %6, align 8
  br label %101

101:                                              ; preds = %94, %61
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  ret i32 %107
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @l2tp_dbg(%struct.l2tp_session*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
