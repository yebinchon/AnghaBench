; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_read_node_wbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_read_node_wbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i32, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_ch = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"LEB %d:%d, %s, length %d, jhead %s\00", align 1
@UBIFS_NODE_TYPES_CNT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_node_wbuf(%struct.ubifs_wbuf* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_wbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %20 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %19, i32 0, i32 5
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %20, align 8
  store %struct.ubifs_info* %21, %struct.ubifs_info** %14, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %23, %struct.ubifs_ch** %18, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dbg_ntype(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dbg_jhead(i32 %31)
  %33 = call i32 @dbg_io(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %27, i32 %28, i32 %32)
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %35 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %36 = icmp ne %struct.ubifs_wbuf* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %6
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = icmp sge i32 %47, 0
  br label %49

49:                                               ; preds = %46, %40, %37, %6
  %50 = phi i1 [ false, %40 ], [ false, %37 ], [ false, %6 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubifs_assert(%struct.ubifs_info* %34, i32 %51)
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, 7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi i1 [ false, %49 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @ubifs_assert(%struct.ubifs_info* %53, i32 %65)
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @UBIFS_NODE_TYPES_CNT, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ false, %63 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @ubifs_assert(%struct.ubifs_info* %67, i32 %76)
  %78 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %79 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %78, i32 0, i32 3
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %83 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %74
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %91 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br label %94

94:                                               ; preds = %86, %74
  %95 = phi i1 [ false, %74 ], [ %93, %86 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %101 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %100, i32 0, i32 3
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @ubifs_read_node(%struct.ubifs_info* %103, i8* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %7, align 4
  br label %212

110:                                              ; preds = %94
  %111 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %112 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %118, %110
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %120, i64 %122
  %124 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %125 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %128, %129
  %131 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %132 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %16, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @memcpy(i8* %123, i32 %134, i32 %137)
  %139 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %140 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %139, i32 0, i32 3
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* %16, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %119
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @ubifs_leb_read(%struct.ubifs_info* %145, i32 %146, i8* %147, i32 %148, i32 %149, i32 0)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @EBADMSG, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %7, align 4
  br label %212

160:                                              ; preds = %153, %144
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.ubifs_ch*, %struct.ubifs_ch** %18, align 8
  %164 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %162, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %169 = load %struct.ubifs_ch*, %struct.ubifs_ch** %18, align 8
  %170 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %172)
  br label %201

174:                                              ; preds = %161
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @ubifs_check_node(%struct.ubifs_info* %175, i8* %176, i32 %177, i32 %178, i32 0, i32 0)
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* %7, align 4
  br label %212

187:                                              ; preds = %174
  %188 = load %struct.ubifs_ch*, %struct.ubifs_ch** %18, align 8
  %189 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le32_to_cpu(i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %197, i32 %198)
  br label %201

200:                                              ; preds = %187
  store i32 0, i32* %7, align 4
  br label %212

201:                                              ; preds = %195, %167
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %203, i32 %204)
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = call i32 @ubifs_dump_node(%struct.ubifs_info* %206, i8* %207)
  %209 = call i32 (...) @dump_stack()
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %201, %200, %182, %158, %99
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubifs_read_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
