; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_param_set_hashtbl_sz.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_param_set_hashtbl_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@MAX_HASHTABLE_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_set_hashtbl_sz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_set_hashtbl_sz(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @kstrtoul(i8* %13, i32 0, i64* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %35

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = sub i64 %19, 1
  %21 = call i32 @fls(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MAX_HASHTABLE_BITS, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %18
  br label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %32 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32 %30, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %38

35:                                               ; preds = %28, %17, %11
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
