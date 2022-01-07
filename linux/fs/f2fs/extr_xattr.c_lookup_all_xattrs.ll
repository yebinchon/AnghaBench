; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_lookup_all_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_lookup_all_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_xattr_entry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENODATA = common dso_local global i32 0, align 4
@XATTR_PADDING_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inode (%lu) has corrupted xattr\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32, i32, i8*, %struct.f2fs_xattr_entry**, i8**, i32*)* @lookup_all_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_all_xattrs(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3, i8* %4, %struct.f2fs_xattr_entry** %5, i8** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.f2fs_xattr_entry**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.page* %1, %struct.page** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store %struct.f2fs_xattr_entry** %5, %struct.f2fs_xattr_entry*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* null, i8** %21, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %22, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call i32 @inline_xattr_size(%struct.inode* %29)
  store i32 %30, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %31 = load i64, i64* %22, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %8
  %34 = load i32, i32* %23, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODATA, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %149

39:                                               ; preds = %33, %8
  %40 = load i64, i64* %22, align 8
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i32 @XATTR_SIZE(i64 %40, %struct.inode* %41)
  %43 = load i32, i32* @XATTR_PADDING_SIZE, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32*, i32** %17, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i32 @F2FS_I_SB(%struct.inode* %46)
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i8* @f2fs_kzalloc(i32 %47, i32 %49, i32 %50)
  store i8* %51, i8** %19, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %149

57:                                               ; preds = %39
  %58 = load i8*, i8** %19, align 8
  %59 = load i64, i64* %22, align 8
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = call i32 @XATTR_SIZE(i64 %59, %struct.inode* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %58, i64 %62
  store i8* %63, i8** %20, align 8
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %57
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = load %struct.page*, %struct.page** %11, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 @read_inline_xattr(%struct.inode* %67, %struct.page* %68, i8* %69)
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %145

74:                                               ; preds = %66
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = call %struct.f2fs_xattr_entry* @__find_inline_xattr(%struct.inode* %75, i8* %76, i8** %21, i32 %77, i32 %78, i8* %79)
  %81 = load %struct.f2fs_xattr_entry**, %struct.f2fs_xattr_entry*** %15, align 8
  store %struct.f2fs_xattr_entry* %80, %struct.f2fs_xattr_entry** %81, align 8
  %82 = load %struct.f2fs_xattr_entry**, %struct.f2fs_xattr_entry*** %15, align 8
  %83 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %82, align 8
  %84 = icmp ne %struct.f2fs_xattr_entry* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %23, align 4
  %87 = load i32*, i32** %17, align 8
  store i32 %86, i32* %87, align 4
  br label %134

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i64, i64* %22, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = call i32 @read_xattr_block(%struct.inode* %93, i8* %94)
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %24, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %145

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %89
  %101 = load i8*, i8** %21, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i8*, i8** %21, align 8
  %105 = call i8* @XATTR_HDR(i8* %104)
  %106 = getelementptr i8, i8* %105, i64 -1
  store i8* %106, i8** %18, align 8
  br label %109

107:                                              ; preds = %100
  %108 = load i8*, i8** %19, align 8
  store i8* %108, i8** %18, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i8*, i8** %18, align 8
  %111 = load i8*, i8** %20, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = call %struct.f2fs_xattr_entry* @__find_xattr(i8* %110, i8* %111, i32 %112, i32 %113, i8* %114)
  %116 = load %struct.f2fs_xattr_entry**, %struct.f2fs_xattr_entry*** %15, align 8
  store %struct.f2fs_xattr_entry* %115, %struct.f2fs_xattr_entry** %116, align 8
  %117 = load %struct.f2fs_xattr_entry**, %struct.f2fs_xattr_entry*** %15, align 8
  %118 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %117, align 8
  %119 = icmp ne %struct.f2fs_xattr_entry* %118, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %109
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = call i32 @F2FS_I_SB(%struct.inode* %121)
  %123 = load %struct.inode*, %struct.inode** %10, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @f2fs_err(i32 %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load %struct.inode*, %struct.inode** %10, align 8
  %128 = call i32 @F2FS_I_SB(%struct.inode* %127)
  %129 = load i32, i32* @SBI_NEED_FSCK, align 4
  %130 = call i32 @set_sbi_flag(i32 %128, i32 %129)
  %131 = load i32, i32* @EFSCORRUPTED, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %24, align 4
  br label %145

133:                                              ; preds = %109
  br label %134

134:                                              ; preds = %133, %85
  %135 = load %struct.f2fs_xattr_entry**, %struct.f2fs_xattr_entry*** %15, align 8
  %136 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %135, align 8
  %137 = call i64 @IS_XATTR_LAST_ENTRY(%struct.f2fs_xattr_entry* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @ENODATA, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %24, align 4
  br label %145

142:                                              ; preds = %134
  %143 = load i8*, i8** %19, align 8
  %144 = load i8**, i8*** %16, align 8
  store i8* %143, i8** %144, align 8
  store i32 0, i32* %9, align 4
  br label %149

145:                                              ; preds = %139, %120, %98, %73
  %146 = load i8*, i8** %19, align 8
  %147 = call i32 @kvfree(i8* %146)
  %148 = load i32, i32* %24, align 4
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %145, %142, %54, %36
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @inline_xattr_size(%struct.inode*) #1

declare dso_local i32 @XATTR_SIZE(i64, %struct.inode*) #1

declare dso_local i8* @f2fs_kzalloc(i32, i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @read_inline_xattr(%struct.inode*, %struct.page*, i8*) #1

declare dso_local %struct.f2fs_xattr_entry* @__find_inline_xattr(%struct.inode*, i8*, i8**, i32, i32, i8*) #1

declare dso_local i32 @read_xattr_block(%struct.inode*, i8*) #1

declare dso_local i8* @XATTR_HDR(i8*) #1

declare dso_local %struct.f2fs_xattr_entry* @__find_xattr(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @f2fs_err(i32, i8*, i32) #1

declare dso_local i32 @set_sbi_flag(i32, i32) #1

declare dso_local i64 @IS_XATTR_LAST_ENTRY(%struct.f2fs_xattr_entry*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
