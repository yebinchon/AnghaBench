; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_lookup_journal_in_cursum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_lookup_journal_in_cursum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_journal = type { i32 }

@NAT_JOURNAL = common dso_local global i32 0, align 4
@SIT_JOURNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_lookup_journal_in_cursum(%struct.f2fs_journal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_journal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.f2fs_journal* %0, %struct.f2fs_journal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NAT_JOURNAL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %18 = call i32 @nats_in_cursum(%struct.f2fs_journal* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @nid_in_journal(%struct.f2fs_journal* %21, i32 %22)
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %82

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %38 = load i32, i32* @NAT_JOURNAL, align 4
  %39 = call i64 @__has_cursum_space(%struct.f2fs_journal* %37, i32 1, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %43 = call i32 @update_nats_in_cursum(%struct.f2fs_journal* %42, i32 1)
  store i32 %43, i32* %5, align 4
  br label %82

44:                                               ; preds = %36, %33
  br label %81

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SIT_JOURNAL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %53 = call i32 @sits_in_cursum(%struct.f2fs_journal* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @segno_in_journal(%struct.f2fs_journal* %56, i32 %57)
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %82

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %73 = load i32, i32* @SIT_JOURNAL, align 4
  %74 = call i64 @__has_cursum_space(%struct.f2fs_journal* %72, i32 1, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %78 = call i32 @update_sits_in_cursum(%struct.f2fs_journal* %77, i32 1)
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %71, %68
  br label %80

80:                                               ; preds = %79, %45
  br label %81

81:                                               ; preds = %80, %44
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %76, %62, %41, %27
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @nats_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nid_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i64 @__has_cursum_space(%struct.f2fs_journal*, i32, i32) #1

declare dso_local i32 @update_nats_in_cursum(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @sits_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i32 @segno_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @update_sits_in_cursum(%struct.f2fs_journal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
