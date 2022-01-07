; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_update_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_update_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dentry_ptr = type { i64, i32*, %struct.f2fs_dir_entry* }
%struct.f2fs_dir_entry = type { i64, i32, i32 }
%struct.qstr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_update_dentry(i32 %0, i32 %1, %struct.f2fs_dentry_ptr* %2, %struct.qstr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_dentry_ptr*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.f2fs_dir_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.f2fs_dentry_ptr* %2, %struct.f2fs_dentry_ptr** %9, align 8
  store %struct.qstr* %3, %struct.qstr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.qstr*, %struct.qstr** %10, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GET_DENTRY_SLOTS(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %9, align 8
  %21 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %20, i32 0, i32 2
  %22 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %22, i64 %24
  store %struct.f2fs_dir_entry* %25, %struct.f2fs_dir_entry** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %13, align 8
  %28 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.qstr*, %struct.qstr** %10, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @cpu_to_le16(i32 %31)
  %33 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %13, align 8
  %34 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %9, align 8
  %36 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qstr*, %struct.qstr** %10, align 8
  %43 = getelementptr inbounds %struct.qstr, %struct.qstr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qstr*, %struct.qstr** %10, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %44, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %13, align 8
  %52 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %13, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @set_de_type(%struct.f2fs_dir_entry* %53, i32 %54)
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %78, %6
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add i32 %61, %62
  %64 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %9, align 8
  %65 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @__set_bit_le(i32 %63, i8* %67)
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %56

81:                                               ; preds = %56
  ret void
}

declare dso_local i32 @GET_DENTRY_SLOTS(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @set_de_type(%struct.f2fs_dir_entry*, i32) #1

declare dso_local i32 @__set_bit_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
