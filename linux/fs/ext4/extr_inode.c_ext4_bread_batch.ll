; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_bread_batch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_bread_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_bread_batch(%struct.inode* %0, i64 %1, i32 %2, i32 %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %45, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call %struct.buffer_head* @ext4_getblk(i32* null, %struct.inode* %19, i64 %23, i32 0)
  %25 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %25, i64 %27
  store %struct.buffer_head* %24, %struct.buffer_head** %28, align 8
  %29 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %29, i64 %31
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  %34 = call i64 @IS_ERR(%struct.buffer_head* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %18
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 %39
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = call i32 @PTR_ERR(%struct.buffer_head* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %9, align 4
  br label %137

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %79, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %54, i64 %56
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = icmp ne %struct.buffer_head* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %53
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %61, i64 %63
  %65 = load %struct.buffer_head*, %struct.buffer_head** %64, align 8
  %66 = call i32 @ext4_buffer_uptodate(%struct.buffer_head* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @REQ_OP_READ, align 4
  %70 = load i32, i32* @REQ_META, align 4
  %71 = load i32, i32* @REQ_PRIO, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %73, i64 %75
  %77 = call i32 @ll_rw_block(i32 %69, i32 %72, i32 1, %struct.buffer_head** %76)
  br label %78

78:                                               ; preds = %68, %60, %53
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %158

86:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %92, i64 %94
  %96 = load %struct.buffer_head*, %struct.buffer_head** %95, align 8
  %97 = icmp ne %struct.buffer_head* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %99, i64 %101
  %103 = load %struct.buffer_head*, %struct.buffer_head** %102, align 8
  %104 = call i32 @wait_on_buffer(%struct.buffer_head* %103)
  br label %105

105:                                              ; preds = %98, %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %87

109:                                              ; preds = %87
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %133, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %110
  %115 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %115, i64 %117
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  %120 = icmp ne %struct.buffer_head* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %122, i64 %124
  %126 = load %struct.buffer_head*, %struct.buffer_head** %125, align 8
  %127 = call i32 @buffer_uptodate(%struct.buffer_head* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %13, align 4
  br label %137

132:                                              ; preds = %121, %114
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %110

136:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  br label %158

137:                                              ; preds = %129, %36
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %153, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 %145
  %147 = load %struct.buffer_head*, %struct.buffer_head** %146, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  %149 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %149, i64 %151
  store %struct.buffer_head* null, %struct.buffer_head** %152, align 8
  br label %153

153:                                              ; preds = %142
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %138

156:                                              ; preds = %138
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %136, %85
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.buffer_head* @ext4_getblk(i32*, %struct.inode*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
