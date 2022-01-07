; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___label_remove.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___label_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32 }
%struct.aa_labelset = type { i32, i32 }

@FLAG_IN_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_label*, %struct.aa_label*)* @__label_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__label_remove(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_labelset*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  %7 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %8 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %7)
  store %struct.aa_labelset* %8, %struct.aa_labelset** %6, align 8
  %9 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %10 = icmp ne %struct.aa_labelset* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @AA_BUG(i32 %12)
  %14 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %15 = icmp ne %struct.aa_label* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %20 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %19, i32 0, i32 1
  %21 = call i32 @lockdep_assert_held_write(i32* %20)
  %22 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %23 = icmp ne %struct.aa_label* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %26 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %27 = call i32 @__aa_proxy_redirect(%struct.aa_label* %25, %struct.aa_label* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %30 = call i32 @label_is_stale(%struct.aa_label* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %34 = call i32 @__label_make_stale(%struct.aa_label* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %37 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FLAG_IN_TREE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %44 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %43, i32 0, i32 1
  %45 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %46 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %45, i32 0, i32 0
  %47 = call i32 @rb_erase(i32* %44, i32* %46)
  %48 = load i32, i32* @FLAG_IN_TREE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %51 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.aa_labelset* @labels_set(%struct.aa_label*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i32 @__aa_proxy_redirect(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @label_is_stale(%struct.aa_label*) #1

declare dso_local i32 @__label_make_stale(%struct.aa_label*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
