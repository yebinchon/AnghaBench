; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_create_and_insert_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_create_and_insert_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32* }
%struct.aa_profile = type { i32 }
%struct.aa_labelset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_profile**, i32, i32)* @vec_create_and_insert_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @vec_create_and_insert_label(%struct.aa_profile** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_profile**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca %struct.aa_labelset*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca i32, align 4
  store %struct.aa_profile** %0, %struct.aa_profile*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.aa_label* null, %struct.aa_label** %8, align 8
  %13 = load %struct.aa_profile**, %struct.aa_profile*** %5, align 8
  %14 = icmp ne %struct.aa_profile** %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.aa_profile**, %struct.aa_profile*** %5, align 8
  %22 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %21, i64 0
  %23 = load %struct.aa_profile*, %struct.aa_profile** %22, align 8
  %24 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %23, i32 0, i32 0
  %25 = call %struct.aa_label* @aa_get_label(i32* %24)
  store %struct.aa_label* %25, %struct.aa_label** %4, align 8
  br label %78

26:                                               ; preds = %3
  %27 = load %struct.aa_profile**, %struct.aa_profile*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %27, i64 %30
  %32 = load %struct.aa_profile*, %struct.aa_profile** %31, align 8
  %33 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %32, i32 0, i32 0
  %34 = call %struct.aa_labelset* @labels_set(i32* %33)
  store %struct.aa_labelset* %34, %struct.aa_labelset** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.aa_label* @aa_label_alloc(i32 %35, i32* null, i32 %36)
  store %struct.aa_label* %37, %struct.aa_label** %11, align 8
  %38 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %39 = icmp ne %struct.aa_label* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store %struct.aa_label* null, %struct.aa_label** %4, align 8
  br label %78

41:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.aa_profile**, %struct.aa_profile*** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %47, i64 %49
  %51 = load %struct.aa_profile*, %struct.aa_profile** %50, align 8
  %52 = call i32 @aa_get_profile(%struct.aa_profile* %51)
  %53 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %54 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.aa_labelset*, %struct.aa_labelset** %9, align 8
  %64 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %63, i32 0, i32 0
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @write_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.aa_labelset*, %struct.aa_labelset** %9, align 8
  %68 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %69 = call %struct.aa_label* @__label_insert(%struct.aa_labelset* %67, %struct.aa_label* %68, i32 0)
  store %struct.aa_label* %69, %struct.aa_label** %8, align 8
  %70 = load %struct.aa_labelset*, %struct.aa_labelset** %9, align 8
  %71 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %70, i32 0, i32 0
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @write_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %75 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %76 = call i32 @label_free_or_put_new(%struct.aa_label* %74, %struct.aa_label* %75)
  %77 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  store %struct.aa_label* %77, %struct.aa_label** %4, align 8
  br label %78

78:                                               ; preds = %62, %40, %20
  %79 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  ret %struct.aa_label* %79
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_label* @aa_get_label(i32*) #1

declare dso_local %struct.aa_labelset* @labels_set(i32*) #1

declare dso_local %struct.aa_label* @aa_label_alloc(i32, i32*, i32) #1

declare dso_local i32 @aa_get_profile(%struct.aa_profile*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aa_label* @__label_insert(%struct.aa_labelset*, %struct.aa_label*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @label_free_or_put_new(%struct.aa_label*, %struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
