; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___label_replace.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___label_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32 }
%struct.aa_labelset = type { i32, i32 }

@FLAG_IN_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_label*, %struct.aa_label*)* @__label_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__label_replace(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
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
  %19 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %20 = icmp ne %struct.aa_label* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %25 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %24, i32 0, i32 1
  %26 = call i32 @lockdep_assert_held_write(i32* %25)
  %27 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %28 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FLAG_IN_TREE, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @AA_BUG(i32 %31)
  %33 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %34 = call i32 @label_is_stale(%struct.aa_label* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %38 = call i32 @__label_make_stale(%struct.aa_label* %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %41 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FLAG_IN_TREE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %39
  %47 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %48 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %47, i32 0, i32 1
  %49 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %50 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %49, i32 0, i32 1
  %51 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %52 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %51, i32 0, i32 0
  %53 = call i32 @rb_replace_node(i32* %48, i32* %50, i32* %52)
  %54 = load i32, i32* @FLAG_IN_TREE, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %57 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @FLAG_IN_TREE, align 4
  %61 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %62 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.aa_labelset* @labels_set(%struct.aa_label*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i32 @label_is_stale(%struct.aa_label*) #1

declare dso_local i32 @__label_make_stale(%struct.aa_label*) #1

declare dso_local i32 @rb_replace_node(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
