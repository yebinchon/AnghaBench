; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_ubifs_find_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_ubifs_find_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ubifs_lprops = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"min_space %d\00", align 1
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_NC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"found LEB %d, free %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_find_free_space(%struct.ubifs_info* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_lprops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, i32, ...) @dbg_find(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 3
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %4
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %45

44:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %57, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %45
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %70, %74
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  store i32 1, i32* %13, align 4
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %66
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %85, i32 0, i32 3
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call %struct.ubifs_lprops* @do_find_free_space(%struct.ubifs_info* %88, i32 %89, i32 %90, i32 %91)
  store %struct.ubifs_lprops* %92, %struct.ubifs_lprops** %10, align 8
  %93 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %94 = call i64 @IS_ERR(%struct.ubifs_lprops* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %98 = call i32 @PTR_ERR(%struct.ubifs_lprops* %97)
  store i32 %98, i32* %14, align 4
  br label %179

99:                                               ; preds = %84
  %100 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %101 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %104 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @LPROPS_TAKEN, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %16, align 4
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %109 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %110 = load i32, i32* @LPROPS_NC, align 4
  %111 = load i32, i32* @LPROPS_NC, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %108, %struct.ubifs_lprops* %109, i32 %110, i32 %111, i32 %112, i32 0)
  store %struct.ubifs_lprops* %113, %struct.ubifs_lprops** %10, align 8
  %114 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %115 = call i64 @IS_ERR(%struct.ubifs_lprops* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %119 = call i32 @PTR_ERR(%struct.ubifs_lprops* %118)
  store i32 %119, i32* %14, align 4
  br label %179

120:                                              ; preds = %99
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 3
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 3
  %134 = call i32 @spin_unlock(i32* %133)
  br label %135

135:                                              ; preds = %123, %120
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %137 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %140 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %138, %141
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %145 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %135
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %150, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %5, align 4
  br label %198

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %135
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %161 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %162, %164
  %166 = call i32 (i8*, i32, ...) @dbg_find(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %165)
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %171 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %172, %173
  %175 = icmp sle i32 %169, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @ubifs_assert(%struct.ubifs_info* %167, i32 %176)
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %5, align 4
  br label %198

179:                                              ; preds = %117, %96
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %184 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %183, i32 0, i32 3
  %185 = call i32 @spin_lock(i32* %184)
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %192 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %191, i32 0, i32 3
  %193 = call i32 @spin_unlock(i32* %192)
  br label %194

194:                                              ; preds = %182, %179
  %195 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %196 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %195)
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %194, %158, %155
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @dbg_find(i8*, i32, ...) #1

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ubifs_lprops* @do_find_free_space(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
