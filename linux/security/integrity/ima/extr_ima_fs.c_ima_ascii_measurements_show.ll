; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_ascii_measurements_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_ascii_measurements_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_queue_entry = type { %struct.ima_template_entry* }
%struct.ima_template_entry = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 (%struct.seq_file*, i32, %struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@IMA_SHOW_ASCII = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ima_ascii_measurements_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_ascii_measurements_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ima_queue_entry*, align 8
  %7 = alloca %struct.ima_template_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ima_queue_entry*
  store %struct.ima_queue_entry* %11, %struct.ima_queue_entry** %6, align 8
  %12 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %13 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %12, i32 0, i32 0
  %14 = load %struct.ima_template_entry*, %struct.ima_template_entry** %13, align 8
  store %struct.ima_template_entry* %14, %struct.ima_template_entry** %7, align 8
  %15 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %16 = icmp eq %struct.ima_template_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %30 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %40

34:                                               ; preds = %18
  %35 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i8* [ %33, %28 ], [ %39, %34 ]
  store i8* %41, i8** %8, align 8
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %44 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %49 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %52 = call i32 @ima_print_digest(%struct.seq_file* %47, i32 %50, i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %98, %40
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %59 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %56
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = call i32 @seq_puts(%struct.seq_file* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %68 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %98

77:                                               ; preds = %64
  %78 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %79 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.seq_file*, i32, %struct.TYPE_6__*)*, i32 (%struct.seq_file*, i32, %struct.TYPE_6__*)** %87, align 8
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load i32, i32* @IMA_SHOW_ASCII, align 4
  %91 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %92 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = call i32 %88(%struct.seq_file* %89, i32 %90, %struct.TYPE_6__* %96)
  br label %98

98:                                               ; preds = %77, %76
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %56

101:                                              ; preds = %56
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @ima_print_digest(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
