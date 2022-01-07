; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_context_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_context_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.lowpan_iphc_ctx_table* }
%struct.lowpan_iphc_ctx_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%3s|%-43s|%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"-------------------------------------------------\0A\00", align 1
@LOWPAN_IPHC_CTX_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%3d|%39pI6c/%-3d|%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @lowpan_context_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_context_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lowpan_iphc_ctx_table*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %8, align 8
  store %struct.lowpan_iphc_ctx_table* %9, %struct.lowpan_iphc_ctx_table** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = call i32 (%struct.seq_file*, i8*, i8*, i8*, i8, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8 signext 67)
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %14 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %15 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %68, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LOWPAN_IPHC_CTX_TABLE_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %23 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = call i32 @lowpan_iphc_ctx_is_active(%struct.TYPE_3__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %68

31:                                               ; preds = %21
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %34 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %44 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %52 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %61 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = call i32 @lowpan_iphc_ctx_is_compression(%struct.TYPE_3__* %65)
  %67 = call i32 (%struct.seq_file*, i8*, i8*, i8*, i8, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %50, i8 signext %59, i32 %66)
  br label %68

68:                                               ; preds = %31, %30
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load %struct.lowpan_iphc_ctx_table*, %struct.lowpan_iphc_ctx_table** %5, align 8
  %73 = getelementptr inbounds %struct.lowpan_iphc_ctx_table, %struct.lowpan_iphc_ctx_table* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i8 signext, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @lowpan_iphc_ctx_is_active(%struct.TYPE_3__*) #1

declare dso_local i32 @lowpan_iphc_ctx_is_compression(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
