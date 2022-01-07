; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_find_divide_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_find_divide_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_header = type { i32, %struct.ocfs2_xattr_entry* }
%struct.ocfs2_xattr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_header*)* @ocfs2_xattr_find_divide_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_find_divide_pos(%struct.ocfs2_xattr_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_xattr_header*, align 8
  %4 = alloca %struct.ocfs2_xattr_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_xattr_header* %0, %struct.ocfs2_xattr_header** %3, align 8
  %8 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %8, i32 0, i32 1
  %10 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %9, align 8
  store %struct.ocfs2_xattr_entry* %10, %struct.ocfs2_xattr_entry** %4, align 8
  %11 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %71, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %22, i64 %27
  %29 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %29, i64 %33
  %35 = call i64 @cmp_xe(%struct.ocfs2_xattr_entry* %28, %struct.ocfs2_xattr_entry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %71

49:                                               ; preds = %41
  %50 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %50, i64 %54
  %56 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %56, i64 %61
  %63 = call i64 @cmp_xe(%struct.ocfs2_xattr_entry* %55, %struct.ocfs2_xattr_entry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %76

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %17

74:                                               ; preds = %17
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %65, %37
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @cmp_xe(%struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
