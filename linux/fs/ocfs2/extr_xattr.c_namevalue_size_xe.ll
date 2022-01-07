; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_namevalue_size_xe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_namevalue_size_xe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_entry = type { i32, i32 }

@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_entry*)* @namevalue_size_xe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @namevalue_size_xe(%struct.ocfs2_xattr_entry* %0) #0 {
  %2 = alloca %struct.ocfs2_xattr_entry*, align 8
  %3 = alloca i64, align 8
  store %struct.ocfs2_xattr_entry* %0, %struct.ocfs2_xattr_entry** %2, align 8
  %4 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @le64_to_cpu(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %2, align 8
  %13 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ false, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @namevalue_size(i32 %21, i64 %22)
  ret i32 %23
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @namevalue_size(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
