; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_cred_fscmp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_cred_fscmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.group_info*, i32, i32 }
%struct.group_info = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cred_fscmp(%struct.cred* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.group_info*, align 8
  %7 = alloca %struct.group_info*, align 8
  %8 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %9 = load %struct.cred*, %struct.cred** %4, align 8
  %10 = load %struct.cred*, %struct.cred** %5, align 8
  %11 = icmp eq %struct.cred* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

13:                                               ; preds = %2
  %14 = load %struct.cred*, %struct.cred** %4, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cred*, %struct.cred** %5, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @uid_lt(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %138

23:                                               ; preds = %13
  %24 = load %struct.cred*, %struct.cred** %4, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cred*, %struct.cred** %5, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @uid_gt(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %138

33:                                               ; preds = %23
  %34 = load %struct.cred*, %struct.cred** %4, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cred*, %struct.cred** %5, align 8
  %38 = getelementptr inbounds %struct.cred, %struct.cred* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @gid_lt(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %138

43:                                               ; preds = %33
  %44 = load %struct.cred*, %struct.cred** %4, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cred*, %struct.cred** %5, align 8
  %48 = getelementptr inbounds %struct.cred, %struct.cred* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @gid_gt(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %138

53:                                               ; preds = %43
  %54 = load %struct.cred*, %struct.cred** %4, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 0
  %56 = load %struct.group_info*, %struct.group_info** %55, align 8
  store %struct.group_info* %56, %struct.group_info** %6, align 8
  %57 = load %struct.cred*, %struct.cred** %5, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 0
  %59 = load %struct.group_info*, %struct.group_info** %58, align 8
  store %struct.group_info* %59, %struct.group_info** %7, align 8
  %60 = load %struct.group_info*, %struct.group_info** %6, align 8
  %61 = load %struct.group_info*, %struct.group_info** %7, align 8
  %62 = icmp eq %struct.group_info* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %138

64:                                               ; preds = %53
  %65 = load %struct.group_info*, %struct.group_info** %6, align 8
  %66 = icmp eq %struct.group_info* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %138

68:                                               ; preds = %64
  %69 = load %struct.group_info*, %struct.group_info** %7, align 8
  %70 = icmp eq %struct.group_info* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %138

72:                                               ; preds = %68
  %73 = load %struct.group_info*, %struct.group_info** %6, align 8
  %74 = getelementptr inbounds %struct.group_info, %struct.group_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.group_info*, %struct.group_info** %7, align 8
  %77 = getelementptr inbounds %struct.group_info, %struct.group_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %138

81:                                               ; preds = %72
  %82 = load %struct.group_info*, %struct.group_info** %6, align 8
  %83 = getelementptr inbounds %struct.group_info, %struct.group_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.group_info*, %struct.group_info** %7, align 8
  %86 = getelementptr inbounds %struct.group_info, %struct.group_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %138

90:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %134, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.group_info*, %struct.group_info** %6, align 8
  %94 = getelementptr inbounds %struct.group_info, %struct.group_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %91
  %98 = load %struct.group_info*, %struct.group_info** %6, align 8
  %99 = getelementptr inbounds %struct.group_info, %struct.group_info* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.group_info*, %struct.group_info** %7, align 8
  %106 = getelementptr inbounds %struct.group_info, %struct.group_info* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @gid_lt(i32 %104, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %138

115:                                              ; preds = %97
  %116 = load %struct.group_info*, %struct.group_info** %6, align 8
  %117 = getelementptr inbounds %struct.group_info, %struct.group_info* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.group_info*, %struct.group_info** %7, align 8
  %124 = getelementptr inbounds %struct.group_info, %struct.group_info* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @gid_gt(i32 %122, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %138

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %91

137:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %132, %114, %89, %80, %71, %67, %63, %52, %42, %32, %22, %12
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @uid_lt(i32, i32) #1

declare dso_local i64 @uid_gt(i32, i32) #1

declare dso_local i64 @gid_lt(i32, i32) #1

declare dso_local i64 @gid_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
