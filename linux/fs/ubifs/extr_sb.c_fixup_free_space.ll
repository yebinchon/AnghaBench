; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_fixup_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_fixup_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubifs_lprops = type { i64 }

@UBIFS_MST_LNUM = common dso_local global i32 0, align 4
@UBIFS_LOG_LNUM = common dso_local global i32 0, align 4
@UBIFS_CS_NODE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @fixup_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_free_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %8 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %7)
  %9 = load i32, i32* @UBIFS_MST_LNUM, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @fixup_leb(%struct.ubifs_info* %15, i32 %16, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %178

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ubifs_next_log_lnum(%struct.ubifs_info* %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %51, %32
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @fixup_leb(%struct.ubifs_info* %45, i32 %46, i64 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %178

51:                                               ; preds = %44
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @ubifs_next_log_lnum(%struct.ubifs_info* %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ALIGN(i32 %60, i32 %63)
  %65 = call i32 @fixup_leb(%struct.ubifs_info* %56, i32 %59, i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %178

69:                                               ; preds = %55
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %109, %69
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %74, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 11
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %79
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %98 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %99, %101
  %103 = call i32 @fixup_leb(%struct.ubifs_info* %95, i32 %96, i64 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %178

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %73

112:                                              ; preds = %73
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %130, %112
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %117, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @fixup_leb(%struct.ubifs_info* %123, i32 %124, i64 0)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %178

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %116

133:                                              ; preds = %116
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %174, %133
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %177

143:                                              ; preds = %137
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %145 = load i32, i32* %3, align 4
  %146 = call %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info* %144, i32 %145)
  store %struct.ubifs_lprops* %146, %struct.ubifs_lprops** %5, align 8
  %147 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %148 = call i64 @IS_ERR(%struct.ubifs_lprops* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %152 = call i32 @PTR_ERR(%struct.ubifs_lprops* %151)
  store i32 %152, i32* %4, align 4
  br label %178

153:                                              ; preds = %143
  %154 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %155 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %162 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %165 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %163, %166
  %168 = call i32 @fixup_leb(%struct.ubifs_info* %159, i32 %160, i64 %167)
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %158
  br label %178

172:                                              ; preds = %158
  br label %173

173:                                              ; preds = %172, %153
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %3, align 4
  br label %137

177:                                              ; preds = %137
  br label %178

178:                                              ; preds = %177, %171, %150, %128, %106, %68, %50, %27
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %180 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %179)
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @fixup_leb(%struct.ubifs_info*, i32, i64) #1

declare dso_local i32 @ubifs_next_log_lnum(%struct.ubifs_info*, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
