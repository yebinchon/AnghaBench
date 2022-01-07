; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@HFSPLUS_SB_CASEFOLD = common dso_local global i32 0, align 4
@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_compare_dentry(%struct.dentry* %0, i32 %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca [3 x i64], align 16
  %26 = alloca [3 x i64], align 16
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %10, align 8
  %30 = load i32, i32* @HFSPLUS_SB_CASEFOLD, align 4
  %31 = load %struct.super_block*, %struct.super_block** %10, align 8
  %32 = call %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %30, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %36 = load %struct.super_block*, %struct.super_block** %10, align 8
  %37 = call %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @test_bit(i32 %35, i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %20, align 8
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %16, align 4
  %45 = load %struct.qstr*, %struct.qstr** %9, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %21, align 8
  %48 = load %struct.qstr*, %struct.qstr** %9, align 8
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i64* null, i64** %19, align 8
  store i64* null, i64** %18, align 8
  br label %51

51:                                               ; preds = %158, %141, %131, %4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %17, align 4
  %56 = icmp sgt i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %167

59:                                               ; preds = %57
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %59
  %63 = load %struct.super_block*, %struct.super_block** %10, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @asc2unichar(%struct.super_block* %63, i8* %64, i32 %65, i64* %24)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i8*, i8** %20, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %20, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load i64, i64* %24, align 8
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 0, i64 0
  %79 = call i64* @decompose_unichar(i64 %77, i32* %14, i64* %78)
  store i64* %79, i64** %18, align 8
  br label %80

80:                                               ; preds = %76, %62
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64*, i64** %18, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83, %80
  %87 = load i64, i64* %24, align 8
  store i64 %87, i64* %22, align 8
  store i64* %22, i64** %18, align 8
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %86, %83
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %89
  %93 = load %struct.super_block*, %struct.super_block** %10, align 8
  %94 = load i8*, i8** %21, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @asc2unichar(%struct.super_block* %93, i8* %94, i32 %95, i64* %24)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i8*, i8** %21, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %21, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %17, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load i64, i64* %24, align 8
  %108 = getelementptr inbounds [3 x i64], [3 x i64]* %26, i64 0, i64 0
  %109 = call i64* @decompose_unichar(i64 %107, i32* %15, i64* %108)
  store i64* %109, i64** %19, align 8
  br label %110

110:                                              ; preds = %106, %92
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64*, i64** %19, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %24, align 8
  store i64 %117, i64* %23, align 8
  store i64* %23, i64** %19, align 8
  store i32 1, i32* %15, align 4
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118, %89
  %120 = load i64*, i64** %18, align 8
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %22, align 8
  %122 = load i64*, i64** %19, align 8
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %23, align 8
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %119
  %127 = load i64, i64* %22, align 8
  %128 = call i64 @case_fold(i64 %127)
  store i64 %128, i64* %22, align 8
  %129 = load i64, i64* %22, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i64*, i64** %18, align 8
  %133 = getelementptr inbounds i64, i64* %132, i32 1
  store i64* %133, i64** %18, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %14, align 4
  br label %51

136:                                              ; preds = %126
  %137 = load i64, i64* %23, align 8
  %138 = call i64 @case_fold(i64 %137)
  store i64 %138, i64* %23, align 8
  %139 = load i64, i64* %23, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i64*, i64** %19, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %19, align 8
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %15, align 4
  br label %51

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %119
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %23, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 -1, i32* %5, align 4
  br label %178

152:                                              ; preds = %147
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %23, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32 1, i32* %5, align 4
  br label %178

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157
  %159 = load i64*, i64** %18, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  store i64* %160, i64** %18, align 8
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %14, align 4
  %163 = load i64*, i64** %19, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %19, align 8
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %15, align 4
  br label %51

167:                                              ; preds = %57
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 -1, i32* %5, align 4
  br label %178

172:                                              ; preds = %167
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 1, i32* %5, align 4
  br label %178

177:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %176, %171, %156, %151
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @asc2unichar(%struct.super_block*, i8*, i32, i64*) #1

declare dso_local i64* @decompose_unichar(i64, i32*, i64*) #1

declare dso_local i64 @case_fold(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
