; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_ep_set_hmacs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_ep_set_hmacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i8** }
%struct.TYPE_4__ = type { i8* }
%struct.sctp_hmacalgo = type { i32, i64* }

@SCTP_AUTH_HMAC_ID_MAX = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SCTP_AUTH_HMAC_ID_SHA1 = common dso_local global i64 0, align 8
@sctp_hmac_list = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_auth_ep_set_hmacs(%struct.sctp_endpoint* %0, %struct.sctp_hmacalgo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %struct.sctp_hmacalgo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store %struct.sctp_hmacalgo* %1, %struct.sctp_hmacalgo** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.sctp_hmacalgo*, %struct.sctp_hmacalgo** %5, align 8
  %12 = getelementptr inbounds %struct.sctp_hmacalgo, %struct.sctp_hmacalgo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.sctp_hmacalgo*, %struct.sctp_hmacalgo** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_hmacalgo, %struct.sctp_hmacalgo* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SCTP_AUTH_HMAC_ID_MAX, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %96

29:                                               ; preds = %15
  %30 = load i64, i64* @SCTP_AUTH_HMAC_ID_SHA1, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sctp_hmac_list, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %96

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %96

54:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %79, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.sctp_hmacalgo*, %struct.sctp_hmacalgo** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_hmacalgo, %struct.sctp_hmacalgo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.sctp_hmacalgo*, %struct.sctp_hmacalgo** %5, align 8
  %63 = getelementptr inbounds %struct.sctp_hmacalgo, %struct.sctp_hmacalgo* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @htons(i32 %69)
  %71 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %72 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %70, i8** %78, align 8
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %55

82:                                               ; preds = %55
  %83 = load %struct.sctp_hmacalgo*, %struct.sctp_hmacalgo** %5, align 8
  %84 = getelementptr inbounds %struct.sctp_hmacalgo, %struct.sctp_hmacalgo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = add i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @htons(i32 %89)
  %91 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %92 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %90, i8** %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %82, %51, %41, %26
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
