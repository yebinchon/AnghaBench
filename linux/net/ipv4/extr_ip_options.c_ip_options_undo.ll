; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_undo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_options = type { i32, i8*, i32, i32, i64, i64, i64, i32 }

@IPOPT_TS_PRESPEC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_options_undo(%struct.ip_options* %0) #0 {
  %2 = alloca %struct.ip_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.ip_options* %0, %struct.ip_options** %2, align 8
  %6 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %7 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %12 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %15 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -4
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %27, 7
  %29 = trunc i32 %28 to i8
  %30 = call i32 @memmove(i8* %21, i8* %23, i8 zeroext %29)
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %34 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %33, i32 0, i32 7
  %35 = call i32 @memcpy(i8* %32, i32* %34, i32 4)
  br label %36

36:                                               ; preds = %10, %1
  %37 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %38 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %43 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %46 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -4
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %54, 4
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %57, i64 %63
  %65 = call i32 @memset(i8* %64, i32 0, i32 4)
  br label %66

66:                                               ; preds = %41, %36
  %67 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %68 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %139

71:                                               ; preds = %66
  %72 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %73 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %76 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 -4
  store i8* %80, i8** %5, align 8
  %81 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %82 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %71
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 %89, 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %92, i64 %98
  %100 = call i32 @memset(i8* %99, i32 0, i32 4)
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 15
  %106 = load i8, i8* @IPOPT_TS_PRESPEC, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %85
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %113, 4
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 1
  br label %116

116:                                              ; preds = %109, %85
  br label %117

117:                                              ; preds = %116, %71
  %118 = load %struct.ip_options*, %struct.ip_options** %2, align 8
  %119 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = sub nsw i32 %126, 4
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %124, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %129, i64 %135
  %137 = call i32 @memset(i8* %136, i32 0, i32 4)
  br label %138

138:                                              ; preds = %122, %117
  br label %139

139:                                              ; preds = %138, %66
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
