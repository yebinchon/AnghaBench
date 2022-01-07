; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read quota tree block %u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, i32*, i32, i32)* @find_next_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_id(%struct.qtree_mem_dqinfo* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtree_mem_dqinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %17 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @getdqbuf(i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %11, align 8
  %22 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %23 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %124

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %44, %31
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %36 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = mul i32 %42, %41
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %48, i32 %49, i8* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %56 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @quota_error(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %120

60:                                               ; preds = %47
  %61 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @__get_index(%struct.qtree_mem_dqinfo* %61, i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %109, %60
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %66
  %71 = load i64*, i64** %11, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @cpu_to_le32(i32 0)
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %109

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %86 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %120

91:                                               ; preds = %83
  %92 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le32_to_cpu(i64 %98)
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @find_next_id(%struct.qtree_mem_dqinfo* %92, i32* %93, i32 %99, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  br label %112

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %78
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %66

112:                                              ; preds = %107, %66
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @ENOENT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %120

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %116, %90, %54
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @kfree(i8* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %28
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @quota_error(i32, i8*, i32) #1

declare dso_local i32 @__get_index(%struct.qtree_mem_dqinfo*, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
