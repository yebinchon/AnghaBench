; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_generic_report.c_get_bug_type.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_generic_report.c_get_bug_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_access_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_bug_type(%struct.kasan_access_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kasan_access_info*, align 8
  store %struct.kasan_access_info* %0, %struct.kasan_access_info** %3, align 8
  %4 = load %struct.kasan_access_info*, %struct.kasan_access_info** %3, align 8
  %5 = getelementptr inbounds %struct.kasan_access_info, %struct.kasan_access_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @addr_has_shadow(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.kasan_access_info*, %struct.kasan_access_info** %3, align 8
  %11 = call i8* @get_shadow_bug_type(%struct.kasan_access_info* %10)
  store i8* %11, i8** %2, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.kasan_access_info*, %struct.kasan_access_info** %3, align 8
  %14 = call i8* @get_wild_bug_type(%struct.kasan_access_info* %13)
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local i64 @addr_has_shadow(i32) #1

declare dso_local i8* @get_shadow_bug_type(%struct.kasan_access_info*) #1

declare dso_local i8* @get_wild_bug_type(%struct.kasan_access_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
