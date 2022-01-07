; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_list_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_list_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dx_entry_list = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dx_entry_list*, i32)* @ocfs2_dx_list_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_list_remove_entry(%struct.ocfs2_dx_entry_list* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_dx_entry_list* %0, %struct.ocfs2_dx_entry_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @le16_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %40

18:                                               ; preds = %12
  %19 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memmove(i32* %24, i32* %31, i32 %38)
  br label %40

40:                                               ; preds = %18, %17
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %3, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @memset(i32* %48, i32 0, i32 4)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %3, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
