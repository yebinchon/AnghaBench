; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_init_inode_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_init_inode_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.qstr = type { i32 }
%struct.page = type { i32 }

@FI_NEW_INODE = common dso_local global i32 0, align 4
@FI_INC_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_init_inode_metadata(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, %struct.qstr* %3, %struct.page* %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.qstr* %3, %struct.qstr** %10, align 8
  store %struct.page* %4, %struct.page** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i32 @F2FS_I_SB(%struct.inode* %15)
  %17 = call i32 @DUMMY_ENCRYPTION_ENABLED(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load i32, i32* @FI_NEW_INODE, align 4
  %20 = call i64 @is_inode_flag_set(%struct.inode* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %5
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.page* @f2fs_new_inode_page(%struct.inode* %23)
  store %struct.page* %24, %struct.page** %12, align 8
  %25 = load %struct.page*, %struct.page** %12, align 8
  %26 = call i64 @IS_ERR(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %29, %struct.page** %6, align 8
  br label %158

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.page*, %struct.page** %12, align 8
  %38 = call i32 @get_page(%struct.page* %37)
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = call i32 @make_empty_dir(%struct.inode* %39, %struct.inode* %40, %struct.page* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = call i32 @lock_page(%struct.page* %46)
  br label %148

48:                                               ; preds = %36
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i32 @put_page(%struct.page* %49)
  br label %51

51:                                               ; preds = %48, %30
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = call i32 @f2fs_init_acl(%struct.inode* %52, %struct.inode* %53, %struct.page* %54, %struct.page* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %148

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = load %struct.qstr*, %struct.qstr** %10, align 8
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = call i32 @f2fs_init_security(%struct.inode* %61, %struct.inode* %62, %struct.qstr* %63, %struct.page* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %148

69:                                               ; preds = %60
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i64 @IS_ENCRYPTED(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73, %69
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = call i64 @f2fs_may_encrypt(%struct.inode* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = load %struct.page*, %struct.page** %12, align 8
  %84 = call i32 @fscrypt_inherit_context(%struct.inode* %81, %struct.inode* %82, %struct.page* %83, i32 0)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %148

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %76, %73
  br label %103

90:                                               ; preds = %5
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i32 @F2FS_I_SB(%struct.inode* %91)
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.page* @f2fs_get_node_page(i32 %92, i32 %95)
  store %struct.page* %96, %struct.page** %12, align 8
  %97 = load %struct.page*, %struct.page** %12, align 8
  %98 = call i64 @IS_ERR(%struct.page* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %101, %struct.page** %6, align 8
  br label %158

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %89
  %104 = load %struct.qstr*, %struct.qstr** %9, align 8
  %105 = icmp ne %struct.qstr* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.qstr*, %struct.qstr** %9, align 8
  %108 = load %struct.page*, %struct.page** %12, align 8
  %109 = call i32 @init_dent_inode(%struct.qstr* %107, %struct.page* %108)
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call i64 @IS_ENCRYPTED(%struct.inode* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i32 @file_set_enc_name(%struct.inode* %114)
  br label %116

116:                                              ; preds = %113, %106
  br label %117

117:                                              ; preds = %116, %103
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = load i32, i32* @FI_INC_LINK, align 4
  %120 = call i64 @is_inode_flag_set(%struct.inode* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %117
  %123 = load %struct.inode*, %struct.inode** %7, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @S_ISDIR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load %struct.inode*, %struct.inode** %7, align 8
  %130 = call i32 @file_lost_pino(%struct.inode* %129)
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = call i32 @F2FS_I_SB(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @f2fs_remove_orphan_inode(i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %136, %131
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = call i32 @f2fs_i_links_write(%struct.inode* %144, i32 1)
  br label %146

146:                                              ; preds = %143, %117
  %147 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %147, %struct.page** %6, align 8
  br label %158

148:                                              ; preds = %87, %68, %59, %45
  %149 = load %struct.inode*, %struct.inode** %7, align 8
  %150 = call i32 @clear_nlink(%struct.inode* %149)
  %151 = load %struct.inode*, %struct.inode** %7, align 8
  %152 = load %struct.page*, %struct.page** %12, align 8
  %153 = call i32 @f2fs_update_inode(%struct.inode* %151, %struct.page* %152)
  %154 = load %struct.page*, %struct.page** %12, align 8
  %155 = call i32 @f2fs_put_page(%struct.page* %154, i32 1)
  %156 = load i32, i32* %14, align 4
  %157 = call %struct.page* @ERR_PTR(i32 %156)
  store %struct.page* %157, %struct.page** %6, align 8
  br label %158

158:                                              ; preds = %148, %146, %100, %28
  %159 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %159
}

declare dso_local i32 @DUMMY_ENCRYPTION_ENABLED(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local %struct.page* @f2fs_new_inode_page(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @make_empty_dir(%struct.inode*, %struct.inode*, %struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @f2fs_init_acl(%struct.inode*, %struct.inode*, %struct.page*, %struct.page*) #1

declare dso_local i32 @f2fs_init_security(%struct.inode*, %struct.inode*, %struct.qstr*, %struct.page*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @f2fs_may_encrypt(%struct.inode*) #1

declare dso_local i32 @fscrypt_inherit_context(%struct.inode*, %struct.inode*, %struct.page*, i32) #1

declare dso_local %struct.page* @f2fs_get_node_page(i32, i32) #1

declare dso_local i32 @init_dent_inode(%struct.qstr*, %struct.page*) #1

declare dso_local i32 @file_set_enc_name(%struct.inode*) #1

declare dso_local i32 @file_lost_pino(%struct.inode*) #1

declare dso_local i32 @f2fs_remove_orphan_inode(i32, i32) #1

declare dso_local i32 @f2fs_i_links_write(%struct.inode*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @f2fs_update_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
