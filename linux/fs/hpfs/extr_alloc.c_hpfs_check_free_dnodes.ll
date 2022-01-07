; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_check_free_dnodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_check_free_dnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"chkdn1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"chkdn2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_check_free_dnodes(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.quad_buffer_head, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 16384
  %19 = sub nsw i32 %18, 1
  %20 = ashr i32 %19, 14
  store i32 %20, i32* %6, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 268435455
  store i32 %25, i32* %7, align 4
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %26, %struct.quad_buffer_head* %11)
  store i32* %27, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %68, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 512
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %68

42:                                               ; preds = %33
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %64, %42
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  store i32 0, i32* %3, align 4
  br label %151

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %49

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %30

71:                                               ; preds = %30
  br label %72

72:                                               ; preds = %71, %2
  %73 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  store i32 0, i32* %8, align 4
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.super_block*, %struct.super_block** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32* @hpfs_map_bitmap(%struct.super_block* %80, i32 %81, %struct.quad_buffer_head* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %82, i32** %10, align 8
  br label %100

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %148, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %151

96:                                               ; preds = %91
  %97 = load %struct.super_block*, %struct.super_block** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32* @hpfs_map_bitmap(%struct.super_block* %97, i32 %98, %struct.quad_buffer_head* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %99, i32** %10, align 8
  br label %100

100:                                              ; preds = %96, %79
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %148

103:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %143, %103
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 512
  br i1 %106, label %107, label %146

107:                                              ; preds = %104
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %143

116:                                              ; preds = %107
  store i32 15, i32* %13, align 4
  br label %117

117:                                              ; preds = %139, %116
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le32_to_cpu(i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %13, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  store i32 0, i32* %3, align 4
  br label %151

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = shl i32 %140, 4
  store i32 %141, i32* %13, align 4
  br label %117

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %104

146:                                              ; preds = %104
  %147 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  br label %148

148:                                              ; preds = %146, %100
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %84

151:                                              ; preds = %135, %95, %60
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
