; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_get_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_get_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fnode = type { i32, i32 }
%struct.extended_attribute = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"out of memory for EA\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpfs_get_ea(%struct.super_block* %0, %struct.fnode* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.extended_attribute*, align 8
  %16 = alloca %struct.extended_attribute*, align 8
  %17 = alloca [268 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fnode* %1, %struct.fnode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.fnode*, %struct.fnode** %7, align 8
  %19 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %18)
  store %struct.extended_attribute* %19, %struct.extended_attribute** %16, align 8
  %20 = load %struct.fnode*, %struct.fnode** %7, align 8
  %21 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %20)
  store %struct.extended_attribute* %21, %struct.extended_attribute** %15, align 8
  br label %22

22:                                               ; preds = %71, %4
  %23 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %24 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %25 = icmp ult %struct.extended_attribute* %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %28 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i32 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %26
  %34 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %35 = call i64 @ea_indirect(%struct.extended_attribute* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %40 = call i32 @ea_in_anode(%struct.extended_attribute* %39)
  %41 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %42 = call i32 @ea_sec(%struct.extended_attribute* %41)
  %43 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %44 = call i32 @ea_len(%struct.extended_attribute* %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = call i8* @get_indirect_ea(%struct.super_block* %38, i32 %40, i32 %42, i32 %44)
  store i8* %46, i8** %5, align 8
  br label %204

47:                                               ; preds = %33
  %48 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %49 = call i32 @ea_valuelen(%struct.extended_attribute* %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = add nsw i32 %49, 1
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call i8* @kmalloc(i32 %51, i32 %52)
  store i8* %53, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %204

57:                                               ; preds = %47
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %60 = call i32 @ea_data(%struct.extended_attribute* %59)
  %61 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %62 = call i32 @ea_valuelen(%struct.extended_attribute* %61)
  %63 = call i32 @memcpy(i8* %58, i32 %60, i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %66 = call i32 @ea_valuelen(%struct.extended_attribute* %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %10, align 8
  store i8* %69, i8** %5, align 8
  br label %204

70:                                               ; preds = %26
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %73 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %72)
  store %struct.extended_attribute* %73, %struct.extended_attribute** %15, align 8
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.fnode*, %struct.fnode** %7, align 8
  %76 = getelementptr inbounds %struct.fnode, %struct.fnode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  store i8* %78, i8** %14, align 8
  %79 = load %struct.fnode*, %struct.fnode** %7, align 8
  %80 = getelementptr inbounds %struct.fnode, %struct.fnode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %13, align 4
  %84 = load %struct.fnode*, %struct.fnode** %7, align 8
  %85 = call i32 @fnode_in_anode(%struct.fnode* %84)
  store i32 %85, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %193, %74
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %203

90:                                               ; preds = %86
  %91 = getelementptr inbounds [268 x i8], [268 x i8]* %17, i64 0, i64 0
  %92 = bitcast i8* %91 to %struct.extended_attribute*
  store %struct.extended_attribute* %92, %struct.extended_attribute** %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load %struct.super_block*, %struct.super_block** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @hpfs_error(%struct.super_block* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %102, i8* %103, i32 %104)
  store i8* null, i8** %5, align 8
  br label %204

106:                                              ; preds = %90
  %107 = load %struct.super_block*, %struct.super_block** %6, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = getelementptr inbounds [268 x i8], [268 x i8]* %17, i64 0, i64 0
  %112 = call i64 @hpfs_ea_read(%struct.super_block* %107, i8* %108, i32 %109, i32 %110, i32 4, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i8* null, i8** %5, align 8
  br label %204

115:                                              ; preds = %106
  %116 = load %struct.super_block*, %struct.super_block** %6, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 4
  %121 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %122 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  %125 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %126 = call i64 @ea_indirect(%struct.extended_attribute* %125)
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 8, i32 0
  %130 = add nsw i32 %124, %129
  %131 = getelementptr inbounds [268 x i8], [268 x i8]* %17, i64 0, i64 0
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  %133 = call i64 @hpfs_ea_read(%struct.super_block* %116, i8* %117, i32 %118, i32 %120, i32 %130, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %115
  store i8* null, i8** %5, align 8
  br label %204

136:                                              ; preds = %115
  %137 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %138 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @strcmp(i32 %139, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %193, label %143

143:                                              ; preds = %136
  %144 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %145 = call i64 @ea_indirect(%struct.extended_attribute* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.super_block*, %struct.super_block** %6, align 8
  %149 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %150 = call i32 @ea_in_anode(%struct.extended_attribute* %149)
  %151 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %152 = call i32 @ea_sec(%struct.extended_attribute* %151)
  %153 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %154 = call i32 @ea_len(%struct.extended_attribute* %153)
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  %156 = call i8* @get_indirect_ea(%struct.super_block* %148, i32 %150, i32 %152, i32 %154)
  store i8* %156, i8** %5, align 8
  br label %204

157:                                              ; preds = %143
  %158 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %159 = call i32 @ea_valuelen(%struct.extended_attribute* %158)
  %160 = load i32*, i32** %9, align 8
  store i32 %159, i32* %160, align 4
  %161 = add nsw i32 %159, 1
  %162 = load i32, i32* @GFP_NOFS, align 4
  %163 = call i8* @kmalloc(i32 %161, i32 %162)
  store i8* %163, i8** %10, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %157
  %166 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %204

167:                                              ; preds = %157
  %168 = load %struct.super_block*, %struct.super_block** %6, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %11, align 4
  %172 = add i32 %171, 4
  %173 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %174 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %172, %175
  %177 = add i32 %176, 1
  %178 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %179 = call i32 @ea_valuelen(%struct.extended_attribute* %178)
  %180 = load i8*, i8** %10, align 8
  %181 = call i64 @hpfs_ea_read(%struct.super_block* %168, i8* %169, i32 %170, i32 %177, i32 %179, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %167
  %184 = load i8*, i8** %10, align 8
  %185 = call i32 @kfree(i8* %184)
  store i8* null, i8** %5, align 8
  br label %204

186:                                              ; preds = %167
  %187 = load i8*, i8** %10, align 8
  %188 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %189 = call i32 @ea_valuelen(%struct.extended_attribute* %188)
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  store i8 0, i8* %191, align 1
  %192 = load i8*, i8** %10, align 8
  store i8* %192, i8** %5, align 8
  br label %204

193:                                              ; preds = %136
  %194 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %195 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %198 = call i32 @ea_valuelen(%struct.extended_attribute* %197)
  %199 = add nsw i32 %196, %198
  %200 = add nsw i32 %199, 5
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %11, align 4
  br label %86

203:                                              ; preds = %86
  store i8* null, i8** %5, align 8
  br label %204

204:                                              ; preds = %203, %186, %183, %165, %147, %135, %114, %97, %57, %55, %37
  %205 = load i8*, i8** %5, align 8
  ret i8* %205
}

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @ea_indirect(%struct.extended_attribute*) #1

declare dso_local i8* @get_indirect_ea(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ea_in_anode(%struct.extended_attribute*) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ea_valuelen(%struct.extended_attribute*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ea_data(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @fnode_in_anode(%struct.fnode*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
