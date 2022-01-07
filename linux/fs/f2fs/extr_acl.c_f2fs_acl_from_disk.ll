; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_acl_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_acl_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i8* }
%struct.f2fs_acl_header = type { i64 }
%struct.f2fs_acl_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@F2FS_ACL_VERSION = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (i8*, i64)* @f2fs_acl_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @f2fs_acl_from_disk(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.f2fs_acl_header*, align 8
  %10 = alloca %struct.f2fs_acl_entry*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.f2fs_acl_header*
  store %struct.f2fs_acl_header* %13, %struct.f2fs_acl_header** %9, align 8
  %14 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %9, align 8
  %15 = getelementptr inbounds %struct.f2fs_acl_header, %struct.f2fs_acl_header* %14, i64 1
  %16 = bitcast %struct.f2fs_acl_header* %15 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %16, %struct.f2fs_acl_entry** %10, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.posix_acl* @ERR_PTR(i32 %24)
  store %struct.posix_acl* %25, %struct.posix_acl** %3, align 8
  br label %161

26:                                               ; preds = %2
  %27 = load %struct.f2fs_acl_header*, %struct.f2fs_acl_header** %9, align 8
  %28 = getelementptr inbounds %struct.f2fs_acl_header, %struct.f2fs_acl_header* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @F2FS_ACL_VERSION, align 4
  %31 = call i64 @cpu_to_le32(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.posix_acl* @ERR_PTR(i32 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %3, align 8
  br label %161

37:                                               ; preds = %26
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @f2fs_acl_count(i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.posix_acl* @ERR_PTR(i32 %44)
  store %struct.posix_acl* %45, %struct.posix_acl** %3, align 8
  br label %161

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %161

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call %struct.posix_acl* @posix_acl_alloc(i32 %51, i32 %52)
  store %struct.posix_acl* %53, %struct.posix_acl** %8, align 8
  %54 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %55 = icmp ne %struct.posix_acl* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.posix_acl* @ERR_PTR(i32 %58)
  store %struct.posix_acl* %59, %struct.posix_acl** %3, align 8
  br label %161

60:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %144, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %61
  %66 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %67 = bitcast %struct.f2fs_acl_entry* %66 to i8*
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ugt i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %155

71:                                               ; preds = %65
  %72 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %73 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le16_to_cpu(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %78 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 8
  %84 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %85 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le16_to_cpu(i32 %86)
  %88 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %89 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i8* %87, i8** %94, align 8
  %95 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %96 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %142 [
    i32 128, label %103
    i32 132, label %103
    i32 131, label %103
    i32 130, label %103
    i32 129, label %108
    i32 133, label %125
  ]

103:                                              ; preds = %71, %71, %71, %71
  %104 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %105 = bitcast %struct.f2fs_acl_entry* %104 to i8*
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = bitcast i8* %106 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %107, %struct.f2fs_acl_entry** %10, align 8
  br label %143

108:                                              ; preds = %71
  %109 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %110 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = call i32 @make_kuid(i32* @init_user_ns, i32 %112)
  %114 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %115 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32 %113, i32* %120, align 8
  %121 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %122 = bitcast %struct.f2fs_acl_entry* %121 to i8*
  %123 = getelementptr inbounds i8, i8* %122, i64 12
  %124 = bitcast i8* %123 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %124, %struct.f2fs_acl_entry** %10, align 8
  br label %143

125:                                              ; preds = %71
  %126 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %127 = getelementptr inbounds %struct.f2fs_acl_entry, %struct.f2fs_acl_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = call i32 @make_kgid(i32* @init_user_ns, i32 %129)
  %131 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %132 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 %130, i32* %137, align 4
  %138 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %139 = bitcast %struct.f2fs_acl_entry* %138 to i8*
  %140 = getelementptr inbounds i8, i8* %139, i64 12
  %141 = bitcast i8* %140 to %struct.f2fs_acl_entry*
  store %struct.f2fs_acl_entry* %141, %struct.f2fs_acl_entry** %10, align 8
  br label %143

142:                                              ; preds = %71
  br label %155

143:                                              ; preds = %125, %108, %103
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %61

147:                                              ; preds = %61
  %148 = load %struct.f2fs_acl_entry*, %struct.f2fs_acl_entry** %10, align 8
  %149 = bitcast %struct.f2fs_acl_entry* %148 to i8*
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ne i8* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %155

153:                                              ; preds = %147
  %154 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %154, %struct.posix_acl** %3, align 8
  br label %161

155:                                              ; preds = %152, %142, %70
  %156 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %157 = call i32 @posix_acl_release(%struct.posix_acl* %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  %160 = call %struct.posix_acl* @ERR_PTR(i32 %159)
  store %struct.posix_acl* %160, %struct.posix_acl** %3, align 8
  br label %161

161:                                              ; preds = %155, %153, %56, %49, %42, %33, %22
  %162 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %162
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @f2fs_acl_count(i64) #1

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @make_kuid(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @make_kgid(i32*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
