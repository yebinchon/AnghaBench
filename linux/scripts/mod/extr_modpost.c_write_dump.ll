; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_write_dump.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_write_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i8*, %struct.symbol*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i32 }

@SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@symbolhash = common dso_local global %struct.symbol** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"0x%08x\09%s\09%s\09%s\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_dump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.buffer, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast %struct.buffer* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %57, %1
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SYMBOL_HASH_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load %struct.symbol**, %struct.symbol*** @symbolhash, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.symbol*, %struct.symbol** %13, i64 %15
  %17 = load %struct.symbol*, %struct.symbol** %16, align 8
  store %struct.symbol* %17, %struct.symbol** %4, align 8
  br label %18

18:                                               ; preds = %52, %12
  %19 = load %struct.symbol*, %struct.symbol** %4, align 8
  %20 = icmp ne %struct.symbol* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = call i64 @dump_sym(%struct.symbol* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.symbol*, %struct.symbol** %4, align 8
  %27 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load %struct.symbol*, %struct.symbol** %4, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.symbol*, %struct.symbol** %4, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i8*, i8** %5, align 8
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = load %struct.symbol*, %struct.symbol** %4, align 8
  %43 = getelementptr inbounds %struct.symbol, %struct.symbol* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.symbol*, %struct.symbol** %4, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @export_str(i32 %49)
  %51 = call i32 @buf_printf(%struct.buffer* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i8* %41, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %40, %21
  %53 = load %struct.symbol*, %struct.symbol** %4, align 8
  %54 = getelementptr inbounds %struct.symbol, %struct.symbol* %53, i32 0, i32 1
  %55 = load %struct.symbol*, %struct.symbol** %54, align 8
  store %struct.symbol* %55, %struct.symbol** %4, align 8
  br label %18

56:                                               ; preds = %18
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %8

60:                                               ; preds = %8
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @write_if_changed(%struct.buffer* %3, i8* %61)
  %63 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @free(i32 %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dump_sym(%struct.symbol*) #2

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @export_str(i32) #2

declare dso_local i32 @write_if_changed(%struct.buffer*, i8*) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
