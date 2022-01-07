; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*)* @ocfs2_rotate_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_rotate_leaf(%struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_rec* %1) #0 {
  %3 = alloca %struct.ocfs2_extent_list*, align 8
  %4 = alloca %struct.ocfs2_extent_rec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %3, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %4, align 8
  %12 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %20, i32 0, i32 0
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i64 0
  %24 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %2
  %42 = phi i1 [ false, %2 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %54, i32 0, i32 0
  %56 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %56, i64 %58
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %60, i32 0, i32 0
  %62 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %62, i64 %65
  %67 = bitcast %struct.ocfs2_extent_rec* %59 to i8*
  %68 = bitcast %struct.ocfs2_extent_rec* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %41
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %95, %75
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %81, i32 0, i32 0
  %83 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %83, i64 %85
  store %struct.ocfs2_extent_rec* %86, %struct.ocfs2_extent_rec** %11, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = icmp slt i64 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %98

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %76

98:                                               ; preds = %93, %76
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %6, align 4
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %105 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = call i32 @trace_ocfs2_rotate_leaf(i64 %100, i32 %101, i32 %102, i32 %103, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = icmp sge i32 %113, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @BUG_ON(i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %98
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %132 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @le16_to_cpu(i32 %133)
  %135 = icmp sge i32 %130, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @BUG_ON(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %138, %139
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %9, align 4
  %145 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %146 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %145, i32 0, i32 0
  %147 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %147, i64 %150
  %152 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %153 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %152, i32 0, i32 0
  %154 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %154, i64 %156
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @memmove(%struct.ocfs2_extent_rec* %151, %struct.ocfs2_extent_rec* %157, i32 %158)
  br label %160

160:                                              ; preds = %129, %98
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @cpu_to_le16(i32 %163)
  %165 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %166 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %168 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le16_to_cpu(i32 %169)
  %171 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %172 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @le16_to_cpu(i32 %173)
  %175 = icmp sgt i32 %170, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @BUG_ON(i32 %176)
  %178 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %179 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %178, i32 0, i32 0
  %180 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %180, i64 %182
  %184 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %185 = bitcast %struct.ocfs2_extent_rec* %183 to i8*
  %186 = bitcast %struct.ocfs2_extent_rec* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 4, i1 false)
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @trace_ocfs2_rotate_leaf(i64, i32, i32, i32, i32) #1

declare dso_local i32 @memmove(%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
