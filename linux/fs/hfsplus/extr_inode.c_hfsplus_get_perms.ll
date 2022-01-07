; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_get_perms.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_get_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.hfsplus_perm = type { i32, i32, i32, i32, i32 }
%struct.hfsplus_sb_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@HFSPLUS_FLG_IMMUTABLE = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@HFSPLUS_FLG_APPEND = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.hfsplus_perm*, i32)* @hfsplus_get_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsplus_get_perms(%struct.inode* %0, %struct.hfsplus_perm* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.hfsplus_perm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfsplus_sb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.hfsplus_perm* %1, %struct.hfsplus_perm** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %11)
  store %struct.hfsplus_sb_info* %12, %struct.hfsplus_sb_info** %7, align 8
  %13 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %5, align 8
  %14 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be16_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %5, align 8
  %19 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i32 @i_uid_write(%struct.inode* %17, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @i_uid_read(%struct.inode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %31 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %26, %3
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %5, align 8
  %38 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = call i32 @i_gid_write(%struct.inode* %36, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call i32 @i_gid_read(%struct.inode* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %50 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %45, %35
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @S_IALLUGO, align 4
  %63 = and i32 %61, %62
  br label %71

64:                                               ; preds = %57
  %65 = load i32, i32* @S_IRWXUGO, align 4
  %66 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %67 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %65, %69
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi i32 [ %63, %60 ], [ %70, %64 ]
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @S_IFDIR, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %91

76:                                               ; preds = %54
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @S_IFREG, align 4
  %81 = load i32, i32* @S_IRUGO, align 4
  %82 = load i32, i32* @S_IWUGO, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %85 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = or i32 %80, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %79, %76
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %5, align 8
  %96 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call %struct.TYPE_2__* @HFSPLUS_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %5, align 8
  %102 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HFSPLUS_FLG_IMMUTABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %91
  %108 = load i32, i32* @S_IMMUTABLE, align 4
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %120

113:                                              ; preds = %91
  %114 = load i32, i32* @S_IMMUTABLE, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %107
  %121 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %5, align 8
  %122 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HFSPLUS_FLG_APPEND, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i32, i32* @S_APPEND, align 4
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %140

133:                                              ; preds = %120
  %134 = load i32, i32* @S_APPEND, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %127
  ret void
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
