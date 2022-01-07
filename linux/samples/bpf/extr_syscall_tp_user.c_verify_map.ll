; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_syscall_tp_user.c_verify_map.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_syscall_tp_user.c_verify_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"map_lookup failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed: map #%d returns value 0\0A\00", align 1
@BPF_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"map_update failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @verify_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @bpf_map_lookup_elem(i32 %5, i64* %3, i64* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @errno, align 4
  %11 = call i8* @strerror(i32 %10)
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %30

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %30

20:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @BPF_ANY, align 4
  %23 = call i64 @bpf_map_update_elem(i32 %21, i64* %3, i64* %4, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %8, %16, %25, %20
  ret void
}

declare dso_local i64 @bpf_map_lookup_elem(i32, i64*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
