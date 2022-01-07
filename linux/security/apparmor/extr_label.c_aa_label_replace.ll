; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_replace.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i64 }
%struct.aa_labelset = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_replace(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca %struct.aa_labelset*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store %struct.aa_label* %1, %struct.aa_label** %4, align 8
  %9 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %11 = call i64 @name_is_shared(%struct.aa_label* %9, %struct.aa_label* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %2
  %14 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %15 = call i64 @labels_ns(%struct.aa_label* %14)
  %16 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %17 = call i64 @labels_ns(%struct.aa_label* %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %21 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %20)
  %22 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @write_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %26 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %29 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %34 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %35 = call i32 @__proxy_share(%struct.aa_label* %33, %struct.aa_label* %34)
  br label %40

36:                                               ; preds = %19
  %37 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %38 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %39 = call i32 @__aa_proxy_redirect(%struct.aa_label* %37, %struct.aa_label* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %42 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %43 = call i32 @__label_replace(%struct.aa_label* %41, %struct.aa_label* %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %45 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %44)
  %46 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @write_unlock_irqrestore(i32* %46, i64 %47)
  br label %89

49:                                               ; preds = %13, %2
  %50 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %51 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %50)
  store %struct.aa_labelset* %51, %struct.aa_labelset** %8, align 8
  %52 = load %struct.aa_labelset*, %struct.aa_labelset** %8, align 8
  %53 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %52, i32 0, i32 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @write_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %57 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %58 = call i32 @__label_remove(%struct.aa_label* %56, %struct.aa_label* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %60 = call i64 @labels_ns(%struct.aa_label* %59)
  %61 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %62 = call i64 @labels_ns(%struct.aa_label* %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %49
  %65 = load %struct.aa_labelset*, %struct.aa_labelset** %8, align 8
  %66 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @write_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %70 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %69)
  store %struct.aa_labelset* %70, %struct.aa_labelset** %8, align 8
  %71 = load %struct.aa_labelset*, %struct.aa_labelset** %8, align 8
  %72 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %71, i32 0, i32 0
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @write_lock_irqsave(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %64, %49
  %76 = load %struct.aa_labelset*, %struct.aa_labelset** %8, align 8
  %77 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %78 = call %struct.aa_label* @__label_insert(%struct.aa_labelset* %76, %struct.aa_label* %77, i32 1)
  store %struct.aa_label* %78, %struct.aa_label** %7, align 8
  %79 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %80 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %81 = icmp eq %struct.aa_label* %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load %struct.aa_labelset*, %struct.aa_labelset** %8, align 8
  %84 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %83, i32 0, i32 0
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @write_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %88 = call i32 @aa_put_label(%struct.aa_label* %87)
  br label %89

89:                                               ; preds = %75, %40
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @name_is_shared(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i64 @labels_ns(%struct.aa_label*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aa_labelset* @labels_set(%struct.aa_label*) #1

declare dso_local i32 @__proxy_share(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @__aa_proxy_redirect(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @__label_replace(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__label_remove(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local %struct.aa_label* @__label_insert(%struct.aa_labelset*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
