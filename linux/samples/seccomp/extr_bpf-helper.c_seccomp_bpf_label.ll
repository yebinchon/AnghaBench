; ModuleID = '/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-helper.c_seccomp_bpf_label.c'
source_filename = "/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-helper.c_seccomp_bpf_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_labels = type { i64, %struct.__bpf_label* }
%struct.__bpf_label = type { i8*, i32 }

@BPF_LABELS_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Too many labels\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seccomp_bpf_label(%struct.bpf_labels* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_labels*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__bpf_label*, align 8
  %7 = alloca %struct.__bpf_label*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_labels* %0, %struct.bpf_labels** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.bpf_labels*, %struct.bpf_labels** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_labels, %struct.bpf_labels* %9, i32 0, i32 1
  %11 = load %struct.__bpf_label*, %struct.__bpf_label** %10, align 8
  store %struct.__bpf_label* %11, %struct.__bpf_label** %6, align 8
  %12 = load %struct.bpf_labels*, %struct.bpf_labels** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_labels, %struct.bpf_labels* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BPF_LABELS_MAX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  %22 = load %struct.bpf_labels*, %struct.bpf_labels** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_labels, %struct.bpf_labels* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %29 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %31 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 8
  %32 = load %struct.bpf_labels*, %struct.bpf_labels** %4, align 8
  %33 = getelementptr inbounds %struct.bpf_labels, %struct.bpf_labels* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %72

36:                                               ; preds = %21
  %37 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %38 = load %struct.bpf_labels*, %struct.bpf_labels** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_labels, %struct.bpf_labels* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %37, i64 %40
  store %struct.__bpf_label* %41, %struct.__bpf_label** %7, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %56, %36
  %43 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %44 = load %struct.__bpf_label*, %struct.__bpf_label** %7, align 8
  %45 = icmp ult %struct.__bpf_label* %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %49 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* %47, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %58 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %57, i32 1
  store %struct.__bpf_label* %58, %struct.__bpf_label** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %64 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.__bpf_label*, %struct.__bpf_label** %6, align 8
  %66 = getelementptr inbounds %struct.__bpf_label, %struct.__bpf_label* %65, i32 0, i32 1
  store i32 -1, i32* %66, align 8
  %67 = load %struct.bpf_labels*, %struct.bpf_labels** %4, align 8
  %68 = getelementptr inbounds %struct.bpf_labels, %struct.bpf_labels* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %53, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
