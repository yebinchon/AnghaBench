; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_addr.c_tipc_nodeid2string.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_addr.c_tipc_nodeid2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NODE_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@NODE_ID_STR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tipc_nodeid2string(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %75, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NODE_ID_LEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %78

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %75

26:                                               ; preds = %21, %12
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 65
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 90
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %75

35:                                               ; preds = %30, %26
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 122
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %75

44:                                               ; preds = %39, %35
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %75

49:                                               ; preds = %44
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %75

54:                                               ; preds = %49
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 95
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %75

59:                                               ; preds = %54
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %75

64:                                               ; preds = %59
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %75

69:                                               ; preds = %64
  %70 = load i8, i8* %7, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %78

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %68, %63, %58, %53, %48, %43, %34, %25
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %8

78:                                               ; preds = %73, %8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @NODE_ID_LEN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @NODE_ID_LEN, align 4
  %86 = call i32 @memcpy(i8* %83, i8* %84, i32 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* @NODE_ID_LEN, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %4, align 8
  store i8* %91, i8** %3, align 8
  br label %133

92:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @NODE_ID_LEN, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = mul nsw i32 2, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @sprintf(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %107)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load i32, i32* @NODE_ID_STR_LEN, align 4
  %114 = sub nsw i32 %113, 2
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %128, %112
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 48
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %6, align 4
  br label %115

131:                                              ; preds = %115
  %132 = load i8*, i8** %4, align 8
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %131, %82
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
