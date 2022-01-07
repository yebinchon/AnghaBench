; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_do_insert_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_do_insert_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32 }
%struct.dquot = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read tree quota block %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, %struct.dquot*, i32*, i32)* @do_insert_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_insert_tree(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtree_mem_dqinfo*, align 8
  %7 = alloca %struct.dquot*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %6, align 8
  store %struct.dquot* %1, %struct.dquot** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %17 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @getdqbuf(i32 %18)
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %132

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %31 = call i32 @get_free_dqblk(%struct.qtree_mem_dqinfo* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %128

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %40 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memset(i8* %38, i32 0, i32 %41)
  store i32 1, i32* %13, align 4
  br label %59

43:                                               ; preds = %25
  %44 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %44, i32 %46, i8* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.dquot*, %struct.dquot** %7, align 8
  %53 = getelementptr inbounds %struct.dquot, %struct.dquot* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @quota_error(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %128

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %64 = load %struct.dquot*, %struct.dquot** %7, align 8
  %65 = getelementptr inbounds %struct.dquot, %struct.dquot* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @get_index(%struct.qtree_mem_dqinfo* %63, i32 %66, i32 %67)
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %59
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %78 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %84 = load %struct.dquot*, %struct.dquot** %7, align 8
  %85 = call i32 @find_free_dqentry(%struct.qtree_mem_dqinfo* %83, %struct.dquot* %84, i32* %11)
  store i32 %85, i32* %15, align 4
  br label %92

86:                                               ; preds = %75
  %87 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %88 = load %struct.dquot*, %struct.dquot** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @do_insert_tree(%struct.qtree_mem_dqinfo* %87, %struct.dquot* %88, i32* %15, i32 %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load i32*, i32** %14, align 8
  %102 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %103 = load %struct.dquot*, %struct.dquot** %7, align 8
  %104 = getelementptr inbounds %struct.dquot, %struct.dquot* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @get_index(%struct.qtree_mem_dqinfo* %102, i32 %105, i32 %106)
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32 %100, i32* %108, align 4
  %109 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %109, i32 %111, i8* %112)
  store i32 %113, i32* %11, align 4
  br label %127

114:                                              ; preds = %95, %92
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @put_free_dqblk(%struct.qtree_mem_dqinfo* %121, i8* %122, i32 %124)
  br label %126

126:                                              ; preds = %120, %117, %114
  br label %127

127:                                              ; preds = %126, %98
  br label %128

128:                                              ; preds = %127, %51, %34
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @kfree(i8* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %22
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @get_free_dqblk(%struct.qtree_mem_dqinfo*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @quota_error(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @get_index(%struct.qtree_mem_dqinfo*, i32, i32) #1

declare dso_local i32 @find_free_dqentry(%struct.qtree_mem_dqinfo*, %struct.dquot*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @put_free_dqblk(%struct.qtree_mem_dqinfo*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
