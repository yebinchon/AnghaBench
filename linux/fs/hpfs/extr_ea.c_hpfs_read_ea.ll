; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_read_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_read_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fnode = type { i32, i32 }
%struct.extended_attribute = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_read_ea(%struct.super_block* %0, %struct.fnode* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [268 x i8], align 16
  %17 = alloca %struct.extended_attribute*, align 8
  %18 = alloca %struct.extended_attribute*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.fnode* %1, %struct.fnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.fnode*, %struct.fnode** %8, align 8
  %20 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %19)
  store %struct.extended_attribute* %20, %struct.extended_attribute** %18, align 8
  %21 = load %struct.fnode*, %struct.fnode** %8, align 8
  %22 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %21)
  store %struct.extended_attribute* %22, %struct.extended_attribute** %17, align 8
  br label %23

23:                                               ; preds = %60, %5
  %24 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %25 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %26 = icmp ult %struct.extended_attribute* %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %29 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcmp(i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %27
  %35 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %36 = call i64 @ea_indirect(%struct.extended_attribute* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %191

39:                                               ; preds = %34
  %40 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %41 = call i32 @ea_valuelen(%struct.extended_attribute* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %219

47:                                               ; preds = %39
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %50 = call i32 @ea_data(%struct.extended_attribute* %49)
  %51 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %52 = call i32 @ea_valuelen(%struct.extended_attribute* %51)
  %53 = call i32 @memcpy(i8* %48, i32 %50, i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %56 = call i32 @ea_valuelen(%struct.extended_attribute* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  store i32 0, i32* %6, align 4
  br label %219

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %62 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %61)
  store %struct.extended_attribute* %62, %struct.extended_attribute** %17, align 8
  br label %23

63:                                               ; preds = %23
  %64 = load %struct.fnode*, %struct.fnode** %8, align 8
  %65 = getelementptr inbounds %struct.fnode, %struct.fnode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le32_to_cpu(i32 %66)
  store i8* %67, i8** %15, align 8
  %68 = load %struct.fnode*, %struct.fnode** %8, align 8
  %69 = getelementptr inbounds %struct.fnode, %struct.fnode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load %struct.fnode*, %struct.fnode** %8, align 8
  %74 = call i32 @fnode_in_anode(%struct.fnode* %73)
  store i32 %74, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %178, %63
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %188

79:                                               ; preds = %75
  %80 = getelementptr inbounds [268 x i8], [268 x i8]* %16, i64 0, i64 0
  %81 = bitcast i8* %80 to %struct.extended_attribute*
  store %struct.extended_attribute* %81, %struct.extended_attribute** %17, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %82, 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.super_block*, %struct.super_block** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @hpfs_error(%struct.super_block* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %91, i8* %92, i32 %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %219

97:                                               ; preds = %79
  %98 = load %struct.super_block*, %struct.super_block** %7, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = getelementptr inbounds [268 x i8], [268 x i8]* %16, i64 0, i64 0
  %103 = call i64 @hpfs_ea_read(%struct.super_block* %98, i8* %99, i32 %100, i32 %101, i64 4, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %219

108:                                              ; preds = %97
  %109 = load %struct.super_block*, %struct.super_block** %7, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, 4
  %114 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %115 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  %118 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %119 = call i64 @ea_indirect(%struct.extended_attribute* %118)
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 8, i32 0
  %123 = add nsw i32 %117, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [268 x i8], [268 x i8]* %16, i64 0, i64 0
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  %127 = call i64 @hpfs_ea_read(%struct.super_block* %109, i8* %110, i32 %111, i32 %113, i64 %124, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %108
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %219

132:                                              ; preds = %108
  %133 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %134 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @strcmp(i32 %135, i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %178, label %139

139:                                              ; preds = %132
  %140 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %141 = call i64 @ea_indirect(%struct.extended_attribute* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %191

144:                                              ; preds = %139
  %145 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %146 = call i32 @ea_valuelen(%struct.extended_attribute* %145)
  %147 = load i32, i32* %11, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %219

152:                                              ; preds = %144
  %153 = load %struct.super_block*, %struct.super_block** %7, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add i32 %156, 4
  %158 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %159 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %157, %160
  %162 = add i32 %161, 1
  %163 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %164 = call i32 @ea_valuelen(%struct.extended_attribute* %163)
  %165 = sext i32 %164 to i64
  %166 = load i8*, i8** %10, align 8
  %167 = call i64 @hpfs_ea_read(%struct.super_block* %153, i8* %154, i32 %155, i32 %162, i64 %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %152
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %6, align 4
  br label %219

172:                                              ; preds = %152
  %173 = load i8*, i8** %10, align 8
  %174 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %175 = call i32 @ea_valuelen(%struct.extended_attribute* %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 0, i8* %177, align 1
  store i32 0, i32* %6, align 4
  br label %219

178:                                              ; preds = %132
  %179 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %180 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %183 = call i32 @ea_valuelen(%struct.extended_attribute* %182)
  %184 = add nsw i32 %181, %183
  %185 = add nsw i32 %184, 5
  %186 = load i32, i32* %12, align 4
  %187 = add i32 %186, %185
  store i32 %187, i32* %12, align 4
  br label %75

188:                                              ; preds = %75
  %189 = load i32, i32* @ENOENT, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %6, align 4
  br label %219

191:                                              ; preds = %143, %38
  %192 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %193 = call i64 @ea_len(%struct.extended_attribute* %192)
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp uge i64 %193, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %6, align 4
  br label %219

200:                                              ; preds = %191
  %201 = load %struct.super_block*, %struct.super_block** %7, align 8
  %202 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %203 = call i8* @ea_sec(%struct.extended_attribute* %202)
  %204 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %205 = call i32 @ea_in_anode(%struct.extended_attribute* %204)
  %206 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %207 = call i64 @ea_len(%struct.extended_attribute* %206)
  %208 = load i8*, i8** %10, align 8
  %209 = call i64 @hpfs_ea_read(%struct.super_block* %201, i8* %203, i32 %205, i32 0, i64 %207, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %200
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %219

214:                                              ; preds = %200
  %215 = load i8*, i8** %10, align 8
  %216 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %217 = call i64 @ea_len(%struct.extended_attribute* %216)
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  store i8 0, i8* %218, align 1
  store i32 0, i32* %6, align 4
  br label %219

219:                                              ; preds = %214, %211, %197, %188, %172, %169, %149, %129, %105, %86, %47, %44
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @ea_indirect(%struct.extended_attribute*) #1

declare dso_local i32 @ea_valuelen(%struct.extended_attribute*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ea_data(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @fnode_in_anode(%struct.fnode*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i8*, i32, i32, i64, i8*) #1

declare dso_local i64 @ea_len(%struct.extended_attribute*) #1

declare dso_local i8* @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_in_anode(%struct.extended_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
