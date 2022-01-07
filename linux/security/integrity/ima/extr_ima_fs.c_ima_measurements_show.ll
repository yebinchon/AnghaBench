; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_measurements_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_measurements_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_queue_entry = type { %struct.ima_template_entry* }
%struct.ima_template_entry = type { i32, i8*, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i32, %struct.ima_template_field** }
%struct.ima_template_field = type { i8*, i32 (%struct.seq_file*, i32, i32*)* }

@ima_canonical_fmt = common dso_local global i32 0, align 4
@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@IMA_TEMPLATE_IMA_NAME = common dso_local global i8* null, align 8
@IMA_SHOW_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@IMA_SHOW_BINARY_NO_FIELD_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@IMA_SHOW_BINARY_OLD_STRING_FMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_measurements_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ima_queue_entry*, align 8
  %7 = alloca %struct.ima_template_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ima_template_field*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ima_queue_entry*
  store %struct.ima_queue_entry* %17, %struct.ima_queue_entry** %6, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %19 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %18, i32 0, i32 0
  %20 = load %struct.ima_template_entry*, %struct.ima_template_entry** %19, align 8
  store %struct.ima_template_entry* %20, %struct.ima_template_entry** %7, align 8
  %21 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %22 = icmp eq %struct.ima_template_entry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %172

24:                                               ; preds = %2
  %25 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %26 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %46

40:                                               ; preds = %24
  %41 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %42 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i8* [ %39, %34 ], [ %45, %40 ]
  store i8* %47, i8** %8, align 8
  %48 = load i32, i32* @ima_canonical_fmt, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %52 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  br label %59

54:                                               ; preds = %46
  %55 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %56 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cpu_to_le32(i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i32 [ %53, %50 ], [ %58, %54 ]
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = call i32 @ima_putc(%struct.seq_file* %62, i8* %9, i32 4)
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %66 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %69 = call i32 @ima_putc(%struct.seq_file* %64, i8* %67, i32 %68)
  %70 = load i32, i32* @ima_canonical_fmt, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strlen(i8* %73)
  br label %79

75:                                               ; preds = %59
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @cpu_to_le32(i32 %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i32 [ %74, %72 ], [ %78, %75 ]
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %10, align 1
  %82 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %83 = call i32 @ima_putc(%struct.seq_file* %82, i8* %10, i32 1)
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i32 @ima_putc(%struct.seq_file* %84, i8* %85, i32 %87)
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** @IMA_TEMPLATE_IMA_NAME, align 8
  %91 = call i64 @strcmp(i8* %89, i8* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @ima_canonical_fmt, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %102 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  br label %109

104:                                              ; preds = %97
  %105 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %106 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @cpu_to_le32(i32 %107)
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi i32 [ %103, %100 ], [ %108, %104 ]
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %11, align 1
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = call i32 @ima_putc(%struct.seq_file* %112, i8* %11, i32 4)
  br label %114

114:                                              ; preds = %109, %94
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %168, %114
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %118 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %116, %121
  br i1 %122, label %123, label %171

123:                                              ; preds = %115
  %124 = load i32, i32* @IMA_SHOW_BINARY, align 4
  store i32 %124, i32* %14, align 4
  %125 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %126 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = load %struct.ima_template_field**, %struct.ima_template_field*** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ima_template_field*, %struct.ima_template_field** %129, i64 %131
  %133 = load %struct.ima_template_field*, %struct.ima_template_field** %132, align 8
  store %struct.ima_template_field* %133, %struct.ima_template_field** %15, align 8
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %123
  %137 = load %struct.ima_template_field*, %struct.ima_template_field** %15, align 8
  %138 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @IMA_SHOW_BINARY_NO_FIELD_LEN, align 4
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %142, %136, %123
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.ima_template_field*, %struct.ima_template_field** %15, align 8
  %149 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @IMA_SHOW_BINARY_OLD_STRING_FMT, align 4
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %153, %147, %144
  %156 = load %struct.ima_template_field*, %struct.ima_template_field** %15, align 8
  %157 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %156, i32 0, i32 1
  %158 = load i32 (%struct.seq_file*, i32, i32*)*, i32 (%struct.seq_file*, i32, i32*)** %157, align 8
  %159 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %162 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = call i32 %158(%struct.seq_file* %159, i32 %160, i32* %166)
  br label %168

168:                                              ; preds = %155
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %115

171:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ima_putc(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
