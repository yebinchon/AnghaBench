; ModuleID = '/home/carl/AnghaBench/linux/tools/accounting/extr_getdelays.c_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/accounting/extr_getdelays.c_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i64, i8* }
%struct.sockaddr_nl = type { i32 }
%struct.msgtemplate = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@GENL_HDRLEN = common dso_local global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@NLA_HDRLEN = common dso_local global i64 0, align 8
@AF_NETLINK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i8*, i8*, i32)* @send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cmd(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.sockaddr_nl, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.msgtemplate, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* @GENL_HDRLEN, align 4
  %23 = call i32 @NLMSG_LENGTH(i32 %22)
  %24 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @NLM_F_REQUEST, align 4
  %30 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = call i64 @GENLMSG_DATA(%struct.msgtemplate* %21)
  %43 = inttoptr i64 %42 to %struct.nlattr*
  store %struct.nlattr* %43, %struct.nlattr** %16, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %46 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @NLA_HDRLEN, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %53 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %55 = call i32 @NLA_DATA(%struct.nlattr* %54)
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  %59 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %60 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @NLMSG_ALIGN(i64 %61)
  %63 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = bitcast %struct.msgtemplate* %21 to i8*
  store i8* %69, i8** %20, align 8
  %70 = getelementptr inbounds %struct.msgtemplate, %struct.msgtemplate* %21, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %19, align 4
  %73 = call i32 @memset(%struct.sockaddr_nl* %17, i32 0, i32 4)
  %74 = load i32, i32* @AF_NETLINK, align 4
  %75 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %17, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %101, %7
  %77 = load i32, i32* %9, align 4
  %78 = load i8*, i8** %20, align 8
  %79 = load i32, i32* %19, align 4
  %80 = bitcast %struct.sockaddr_nl* %17 to %struct.sockaddr*
  %81 = call i32 @sendto(i32 %77, i8* %78, i32 %79, i32 0, %struct.sockaddr* %80, i32 4)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %76
  %85 = load i32, i32* %18, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %18, align 4
  %89 = load i8*, i8** %20, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %20, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %19, align 4
  br label %101

95:                                               ; preds = %84
  %96 = load i64, i64* @errno, align 8
  %97 = load i64, i64* @EAGAIN, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 -1, i32* %8, align 4
  br label %103

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %87
  br label %76

102:                                              ; preds = %76
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @NLMSG_LENGTH(i32) #1

declare dso_local i64 @GENLMSG_DATA(%struct.msgtemplate*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @NLA_DATA(%struct.nlattr*) #1

declare dso_local i64 @NLMSG_ALIGN(i64) #1

declare dso_local i32 @memset(%struct.sockaddr_nl*, i32, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
