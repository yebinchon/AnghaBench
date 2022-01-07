; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_write_mem_msg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_write_mem_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remcom_in_buffer = common dso_local global i8* null, align 8
@CACHE_FLUSH_IS_SAFE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @write_mem_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mem_msg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i8*, i8** @remcom_in_buffer, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %9, i8** %4, align 8
  %10 = call i64 @kgdb_hex2long(i8** %4, i64* %5)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 44
  br i1 %17, label %18, label %57

18:                                               ; preds = %12
  %19 = call i64 @kgdb_hex2long(i8** %4, i64* %6)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 58
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @kgdb_ebin2mem(i8* %31, i8* %33, i64 %34)
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @kgdb_hex2mem(i8* %37, i8* %39, i64 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %60

47:                                               ; preds = %42
  %48 = load i64, i64* @CACHE_FLUSH_IS_SAFE, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @flush_icache_range(i64 %51, i64 %54)
  br label %56

56:                                               ; preds = %50, %47
  store i32 0, i32* %2, align 4
  br label %60

57:                                               ; preds = %21, %18, %12, %1
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %56, %45
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @kgdb_ebin2mem(i8*, i8*, i64) #1

declare dso_local i32 @kgdb_hex2mem(i8*, i8*, i64) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
