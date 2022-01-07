; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_decompress_record.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_decompress_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_record = type { i32, i64, i8*, i32, i64 }

@PSTORE_TYPE_DMESG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ignored compressed record type %d\0A\00", align 1
@big_oops_buf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"no decompression method initialized!\0A\00", align 1
@big_oops_buf_sz = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tfm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"crypto_comp_decompress failed, ret = %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pstore_record*)* @decompress_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress_record(%struct.pstore_record* %0) #0 {
  %2 = alloca %struct.pstore_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pstore_record* %0, %struct.pstore_record** %2, align 8
  %7 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %8 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %102

12:                                               ; preds = %1
  %13 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %14 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PSTORE_TYPE_DMESG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %20 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %102

23:                                               ; preds = %12
  %24 = load i32, i32* @big_oops_buf, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %102

28:                                               ; preds = %23
  %29 = load i32, i32* @big_oops_buf_sz, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %33 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i64 %35, i32 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %102

41:                                               ; preds = %28
  %42 = load i32, i32* @tfm, align 4
  %43 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %44 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %47 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @crypto_comp_decompress(i32 %42, i8* %45, i32 %48, i8* %49, i32* %4)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @kfree(i8* %56)
  br label %102

58:                                               ; preds = %41
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %64 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %67 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %72 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcpy(i8* %62, i8* %70, i64 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %79 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kmemdup(i8* %75, i64 %81, i32 %82)
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %58
  br label %102

89:                                               ; preds = %58
  %90 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %91 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %96 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %99 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %101 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %89, %88, %53, %40, %26, %18, %11
  ret void
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @crypto_comp_decompress(i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
